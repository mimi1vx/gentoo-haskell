# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Simple CLI RPN calculator"
HOMEPAGE="http://hackage.haskell.org/package/clac"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	>=dev-haskell/plailude-0.5 <dev-haskell/plailude-0.6
	>=dev-haskell/safe-0.3 <dev-haskell/safe-0.4
	>=dev-lang/ghc-7.8.2
"
