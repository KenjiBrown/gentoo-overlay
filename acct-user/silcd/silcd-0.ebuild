# Copyright 2020-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="user for silc server"
ACCT_USER_GROUPS=( silcd )

acct-user_add_deps
