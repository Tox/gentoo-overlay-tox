# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils git-r3

DESCRIPTION=" A minimal FIFO based client for Tox"
HOMEPAGE="http://git.2f30.org/ratox"
EGIT_REPO_URI="git://git.2f30.org/ratox
	http://git.2f30.org/ratox"

LICENSE="ISC"
SLOT="0"
IUSE=""

RDEPEND="net-libs/tox[av]
	media-libs/libv4l
	media-libs/libvpx
	media-libs/openal"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	epatch_user
}

src_compile() {
	emake
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}" install
}
