# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils git-2

DESCRIPTION="Cross-platform graphical user interface for Tox written in Racket"
HOMEPAGE="https://github.com/lehitoskin/blight"
EGIT_REPO_URI="git://github.com/lehitoskin/blight
	https://github.com/lehitoskin/blight"
LICENSE="GPL-3"
SLOT="0"
IUSE="+repl"

RDEPEND="net-libs/tox
	>=dev-db/sqlite-3.8.6
	>=dev-scheme/racket-6.0.1[X]
	dev-scheme/libtoxcore-racket"

src_prepare() {
	epatch "$FILESDIR/${P}.patch"
	epatch_user
}

src_compile() {
	emake blight
	if use repl; then
		emake blight-repl
	fi
}

src_install() {
	emake DESTDIR="${D}/usr" install-blight
	if use repl; then
		emake DESTDIR="${D}/usr" install-repl
	fi
}
