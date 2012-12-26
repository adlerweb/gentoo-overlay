# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=(python{2_6,2_7})

inherit python

DESCRIPTION="A small command-line program to upload videos to YouTube."
HOMEPAGE="https://code.google.com/p/youtube-upload"
SRC_URI="https://youtube-upload.googlecode.com/files/${P}.tgz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE=""
DEPEND="
	dev-python/pycurl
	dev-python/gdata
	"
pkg_setup() {
    python_set_active_version 2
    python_pkg_setup
}

src_install() {
	dodoc examples/*
	
	exeinto /usr/share/youtube-upload
	doexe youtube_upload/*

	dosym /usr/share/youtube-upload/youtube_upload.py /usr/bin/youtube-upload
}
