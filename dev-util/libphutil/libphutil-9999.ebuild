# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit eutils git-2 user

EGIT_REPO_URI="https://github.com/phacility/libphutil.git"
EGIT_BRANCH="master"
KEYWORDS="~amd64"
DESCRIPTION="A collection of PHP utility classes"
HOMEPAGE="https://github.com/phacility/libphutil"

RDEPEND="
	|| ( dev-php/hhvm dev-lang/php )
"

SLOT="0"
LICENSE="Apache-2.0"

src_install()
{
	dodir "/opt/phabricator"
	cp -a "${S}" "${D}/opt/phabricator/libphutil"
}
