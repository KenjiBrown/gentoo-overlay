# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.16.9

EAPI=7

MODULE_AUTHOR="SHLOMIF"
MODULE_VERSION="0.31"


inherit perl-module

DESCRIPTION="Perl module to generate random strings based on a pattern"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
SRC_URI="mirror://cpan/${DIST_A}"

KEYWORDS="alpha amd64 arm arm64 hppa ia64 m68k mips ppc ppc64 riscv s390 sparc x86   amd64-linux arm-linux arm64-linux ppc64-linux x86-linux arm64-macos ppc-macos x64-macos sparc-solaris sparc64-solaris x64-solaris x86-solaris x64-winnt x86-winnt x64-cygwin"
IUSE=""

DEPEND=">=dev-perl/Module-Build-0.422.400
	dev-lang/perl"
