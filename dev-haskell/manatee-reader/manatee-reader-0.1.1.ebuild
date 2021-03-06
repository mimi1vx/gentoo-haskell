# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Feed reader extension for Manatee"
HOMEPAGE="http://hackage.haskell.org/package/manatee-reader"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary
		>=dev-haskell/curl-1.3.7
		=dev-haskell/dbus-client-0.4*
		dev-haskell/derive
		>=dev-haskell/download-curl-0.1.3
		>=dev-haskell/feed-0.3.7
		>=dev-haskell/gtk-0.12.0
		>=dev-haskell/manatee-core-0.1.1
		>=dev-haskell/stm-2.1.2.0
		>=dev-haskell/text-0.7.1.0
		>=dev-haskell/utf8-string-0.3.4
		=dev-haskell/webkit-0.12*
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@dbus-client >= 0.3 && < 0.4@dbus-client >= 0.3 \&\& < 0.5@' \
		-e 's@webkit >= 0.12.0 && < 0.12.2@webkit >= 0.12.0 \&\& < 0.13@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
