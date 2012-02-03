# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2

inherit eutils

IUSE="ssl postgres "

DESCRIPTION="A mail transfer agent that uses postgresql as its data store rather than maildir"
HOMEPAGE="http://www.dbmail.org/"
SRC_URI="http://www.dbmail.org/download/1.2/${P}.tgz" 

DEPEND="ssl? ( dev-libs/openssl )
	postgres? ( >=dev-db/postgresql-base-7.4 )"

RDEPEND=" postgres? ( <dev-db/postgresql-base-8.2 )"

SLOT="0"
LICENSE="gpl-2"
KEYWORDS="~x86 ~ppc  ~sparc"

pkg_setup() { 
	
	enewgroup dbmail
	enewuser dbmail -1 /bin/bash /home/dbmail dbmail
	einfo "Creating /home/dbmail if it does not exist."
	if ! [ -d /home/dbmail ]; then
		einfo "* Creating /home/dbmail"
		mkdir /home/dbmail
	fi
}

src_compile() {

	cd ${S}
	export LDFLAGS=-L/usr/lib/postgresql-8.1/lib
	./configure --prefix=/usr \
		--with-openssl \
		--with-pgsql=/usr/include/postgresql-8.1 || die

	emake || die "compile problem"

}

src_install() {
	cd ${S}
	for file in dbmail-smtp dbmail-pop3d dbmail-imapd \
			dbmail-maintenance dbmail-adduser \
			dbmail-mini-injector dbmail-readvut
	do
		chown dbmail:dbmail $file
		chmod 770 $file
		dobin $file
	done
	doman man/*
	dodoc AUTHORS INSTALL EXTRAS ChangeLog COPYING \
		VERSION NEWS README TODO mysql2pgsql/HOW-TO-CONVERT
	insinto /etc
	doins dbmail.conf
	exeinto /etc/init.d
	newexe ${FILESDIR}/dbmail-pop3d.rc dbmail-pop3d
	newexe ${FILESDIR}/dbmail-imapd.rc dbmail-imapd

	mkdir -p ${D}/home/dbmail/sql
	cp -a sql ${D}/home/dbmail/
	
}

pkg_postinst() {
	einfo ">>> Execute the following command"
	einfo ">>> ebuild  /var/db/pkg/net-mail/${PF}/${PF}.ebuild config"
	einfo ">>> to setup the initial database environment and "
	einfo ">>> for more setup instructions."
	einfo ">>> --- For maintenance ---"
	einfo ">>> add this to crontab: 0 3 * * * /usr/bin/dbmail-maintenance -cfpd >> /dev/null 2>&1 "
}

pkg_config() {

	einfo ">>> Initializing the database user, databse, and tables ..."
	if [  -n "`use postgres`" ]; then	
		einfo ">>> Creating postgres user dbmail. "
		einfo "You may want to add a password for dbmail: "
		einfo "`psql -c "ALTER USER dbmail WITH PASSWORD 'secret';"`"
		createuser -U postgres -a -d dbmail
		psql -U dbmail dbmail < /home/dbmail/sql/postgresql/create_tables.pgsql
	else
		einfo ">>> No initial database config for MySQL yet. "
		einfo "You must configure your MySQL database manually "
	fi
	einfo "Please read /usr/share/doc/dbmail-1.1/INSTALL "
	einfo "for remaining instructions on setting up dbmail users and "
	einfo "for finishing configuration to connect to your MTA and "
	einfo "to connect to your db."
	einfo ""
	einfo "The next step is to add users to the db. Example: "
	einfo "  ./dbmail-adduser a john secret 0 25000000 "
	einfo "           john@dude.org john@dude.net @net.com"
	einfo "You will also want to follow the installation instructions "
	einfo "on setting up the maintenance program to delete old messages."
	einfo "Don't forget to edit /etc/dbmail.conf as well. :)"
}
