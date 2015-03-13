include ../mk/include.mk

export UPSTREAMNAME     = Standpoint Demo
export PKGNAME          = standpoint-demo
export SHORTDESCRIPTION = first-person puzzle-platform game
export VERSION          = 2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.unrulyattractions.com/standpoint/
export YEAR             = 2014-2015
export COPYRIGHT        = Unruly Attractions

deps           = unzip
bin            = StandpointLinux.zip
dir            = standpoint
cleanfiles     = $(dir)
distcleanfiles = $(bin)

download:
	@ $(call download,$(bin),http://www.indiedb.com/downloads/mirror/69250/110/ab4253a797294dbdd0f93713ca9f7535)
	@ $(call verifysha256,$(bin),23bd93818db4560fb81c22e9c93e414a469ada012eab3d71a0dc504e5e9d892e)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir)

