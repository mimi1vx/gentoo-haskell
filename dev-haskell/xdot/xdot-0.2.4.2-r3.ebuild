# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse Graphviz xdot files and interactively view them using GTK and Cairo"
HOMEPAGE="http://hackage.haskell.org/package/xdot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12:=[profile?] <dev-haskell/cairo-0.13:=[profile?]
	>=dev-haskell/graphviz-2999.16:=[profile?] <dev-haskell/graphviz-2999.18:=[profile?]
	>=dev-haskell/gtk-0.12:=[profile?] <dev-haskell/gtk-0.13:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/polyparse-1.8:=[profile?] <dev-haskell/polyparse-1.10:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_prepare() {
	cabal_chdeps \
		'text >= 0.11 && < 1.1' 'text >= 0.11' \
		'mtl >= 2.0 && < 2.2' 'mtl >= 2.0 && < 2.3' \
		'graphviz == 2999.16.*' 'graphviz >= 2999.16 && < 2999.18'
}