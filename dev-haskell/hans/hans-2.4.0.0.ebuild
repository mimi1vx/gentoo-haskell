# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="IPv4 Network Stack"
HOMEPAGE="http://hackage.haskell.org/package/hans"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="bounded-channels enable-tests example +web-server word32-in-random"

RDEPEND=">=dev-haskell/cereal-0.3.5.2:=[profile?]
	>=dev-haskell/fingertree-0.0.1.0:=[profile?]
	>=dev-haskell/monadlib-3.6.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	bounded-channels? ( dev-haskell/boundedchan:=[profile?] )
	enable-tests? ( >=dev-haskell/quickcheck-2.4.2:2=[profile?]
			>=dev-haskell/random-1.0.1.1:=[profile?]
			>=dev-haskell/test-framework-0.6:=[profile?]
			>=dev-haskell/test-framework-quickcheck2-0.2.12.2:=[profile?] )
	!enable-tests? ( word32-in-random? ( >=dev-haskell/random-1.0.1.0:=[profile?] )
				!word32-in-random? ( >=dev-haskell/random-1.0.0.0:=[profile?] ) )
	web-server? ( >=dev-haskell/blaze-html-0.7.0.2:=[profile?]
			dev-haskell/blaze-markup:=[profile?]
			>=dev-haskell/http-4000.2.17:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounded-channels bounded-channels) \
		$(cabal_flag enable-tests enable-tests) \
		$(cabal_flag example example) \
		$(cabal_flag web-server web-server) \
		$(cabal_flag word32-in-random word32-in-random)
}
