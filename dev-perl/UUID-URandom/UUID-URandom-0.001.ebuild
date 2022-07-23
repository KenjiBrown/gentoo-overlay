# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=7

MODULE_AUTHOR="DAGOLDEN"
MODULE_VERSION="0.001"


inherit perl-module

DESCRIPTION="UUIDs based on /dev/urandom or the Windows Crypto API"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
SRC_URI="mirror://cpan/${DIST_A}"

KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k mips ppc ppc64 riscv s390 sparc x86   amd64-linux arm-linux arm64-linux ppc64-linux x86-linux arm64-macos ppc-macos x64-macos sparc-solaris sparc64-solaris x64-solaris x86-solaris x64-winnt x86-winnt x64-cygwin"
IUSE=""

DEPEND=">=dev-perl/Crypt-URandom-0.360.0
	dev-lang/perl"
