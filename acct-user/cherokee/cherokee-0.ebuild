# Copyright 2019-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="A user for www-servers/cherokee"
ACCT_USER_ID=-1
ACCT_USER_GROUPS=( cherokee )
ACCT_USER_HOME=/var/www

acct-user_add_deps
