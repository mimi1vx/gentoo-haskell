# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_P="${P/_pre*/}"

DESCRIPTION="Deep evaluation of data structures"
HOMEPAGE="http://hackage.haskell.org/package/deepseq"
SRC_URI="http://dev.gentoo.org/~gienah/snapshots/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

CABAL_CORE_LIB_GHC_PV="7.7.2013*"
