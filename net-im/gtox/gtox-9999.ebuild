# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit cmake-utils eutils git-r3

DESCRIPTION="A GTK3 Tox-Client"
HOMEPAGE="https://github.com/kokutoru/gtox"
SRC_URI=""
EGIT_REPO_URI="git://github.com/kokutoru/gtox.git
	https://github.com/kokutoru/gtox.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
#IUSE="+filter_audio gtk X"

DEPEND="
	${RDEPEND}
	dev-util/cmake
	>=sys-devel/gcc-4.9.0"
RDEPEND="
	>=dev-cpp/gtkmm-3.16.0
	dev-libs/atk
	dev-libs/glib:2
	dev-cpp/glibmm
	>=dev-libs/flatbuffers-1.2.0
	x11-libs/gtk+:3
	x11-libs/cairo[X]
	x11-libs/pango[X]
	x11-libs/libnotify
	gnome-base/librsvg
	dev-db/sqlite:3
	sys-devel/gettext
	media-libs/libcanberra[gtk3,sound]
	>=dev-cpp/gstreamermm-1.0.10
	net-libs/tox[av]
	x11-libs/libX11"

CMAKE_USE_DIR="${S}/src"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
