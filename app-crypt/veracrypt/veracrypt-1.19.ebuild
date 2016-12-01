# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit flag-o-matic linux-info multilib toolchain-funcs wxwidgets eutils pax-utils

DESCRIPTION="Free open-source disk encryption software"
HOMEPAGE="http://www.veracrypt.org/"
SRC_URI="
	https://github.com/veracrypt/VeraCrypt/archive/VeraCrypt_${PV}.tar.gz -> ${PF}.tar.gz
	http://git.gnupg.org/cgi-bin/gitweb.cgi?p=scute.git;a=blob_plain;f=src/pkcs11.h;hb=38bdba0bb1ab93950489c645938c93ed577f9139 -> ${P}-pkcs11.h
	"

#### well, it's actually VeraCrypt license, which states "VeraCrypt is governed by the TrueCrypt License version 3.0"
LICENSE="truecrypt-3.0"
SLOT="0"
KEYWORDS="-* ~amd64 ~ppc ~x86"
IUSE="X +asm"
RESTRICT="mirror bindist"

WX_GTK_VER="3.0"

RDEPEND="
	>=sys-fs/lvm2-2.02.45
	sys-fs/fuse
	x11-libs/wxGTK:${WX_GTK_VER}[X?]
	app-admin/sudo
	"
DEPEND="
	${RDEPEND}
	!ppc? ( dev-lang/nasm )
	"

S="${WORKDIR}/VeraCrypt-VeraCrypt_${PV}/src"

pkg_setup() {
	local CONFIG_CHECK="~BLK_DEV_DM ~DM_CRYPT ~FUSE_FS ~CRYPTO ~CRYPTO_XTS"
	linux-info_pkg_setup

	if use X; then
		need-wxwidgets unicode
	else
		need-wxwidgets base-unicode
	fi
}

src_prepare() {
	if has_version x11-libs/wxGTK[X]; then
		# Fix linking when NOGUI=1
		sed -e "s/WX_CONFIG_LIBS := base/&,core/" -i Main/Main.make || die "sed Main/Main.make failed"
	fi

	epatch "${FILESDIR}/makefile-archdetect.diff"
	epatch "${FILESDIR}/veracrypt-${PV}-execstack-fix.diff"
	epatch "${FILESDIR}/veracrypt-${PV}-remove-packaging-from-makefile.patch"
	epatch "${FILESDIR}/veracrypt-1.13-link-with-libdl.patch"

	mkdir "${T}"/pkcs11 || die
	ln -s "${DISTDIR}"/${P}-pkcs11.h "${T}"/pkcs11/pkcs11.h || die
}

src_compile() {
	local EXTRA

	use X || EXTRA+=" NOGUI=1"
	use asm  || EXTRA+=" NOASM=1"
	append-flags -DCKR_NEW_PIN_MODE=0x000001B0 -DCKR_NEXT_OTP=0x000001B1

	emake \
		${EXTRA} \
		NOSTRIP=1 \
		NOTEST=1 \
		VERBOSE=1 \
		CC="$(tc-getCC)" \
		CXX="$(tc-getCXX)" \
		AR="$(tc-getAR)" \
		RANLIB="$(tc-getRANLIB)" \
		TC_EXTRA_CFLAGS="${CFLAGS}" \
		TC_EXTRA_CXXFLAGS="${CXXFLAGS}" \
		TC_EXTRA_LFLAGS="${LDFLAGS}" \
		WX_CONFIG="${WX_CONFIG}" \
		PKCS11_INC="${T}/pkcs11/"
}

src_test() {
	"${S}/Main/veracrypt" --text --test || die "tests failed"
}

src_install() {
	dobin Main/veracrypt
	dodoc Readme.txt "Release/Setup Files/VeraCrypt User Guide.pdf"
	exeinto "/$(get_libdir)/rcscripts/addons"
	newexe "${FILESDIR}/${PN}-stop.sh" "${PN}-stop.sh"

	newinitd "${FILESDIR}/${PN}.init" ${PN}

	if use X; then
		newicon Resources/Icons/VeraCrypt-48x48.xpm veracrypt.xpm
		make_desktop_entry ${PN} "VeraCrypt" ${PN} "System"
	fi

	pax-mark -m "${D}/usr/bin/veracrypt"
}

pkg_postinst() {
	elog "There is an init script for VeraCrypt for Baselayout-2."
	elog "If you are a baselayout-2 user and you would like the VeraCrypt"
	elog "mappings removed on shutdown in order to prevent other file systems"
	elog "from unmounting then run:"
	elog "rc-update add veracrypt boot"
	elog

	ewarn "If you're getting errors about DISPLAY while using the terminal"
	ewarn "it's a known upstream bug. To use VeraCrypt from the terminal"
	ewarn "all that's necessary is to run: unset DISPLAY"
	ewarn "This will make the display unaccessable from that terminal "
	ewarn "but at least you will be able to access your volumes."
	ewarn

	ewarn "VeraCrypt has a very restrictive license. Please be explicitly aware"
	ewarn "of the limitations on redistribution of binaries or modified source."
}