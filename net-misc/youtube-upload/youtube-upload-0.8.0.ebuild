# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=(python{2_6,2_7})

inherit distutils-r1

DESCRIPTION="A small command-line program to upload videos to YouTube."
HOMEPAGE="https://github.com/tokland/youtube-upload"
SRC_URI="https://github.com/tokland/youtube-upload/archive/${PV}.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE=""
DEPEND="
        dev-python/pycurl
        dev-python/google-api-python-client
        dev-python/progressbar
        "

