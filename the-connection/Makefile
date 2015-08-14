include ../mk/include.mk

export UPSTREAMNAME     = The Connection
export PKGNAME          = the-connection
export SHORTDESCRIPTION = abstract first-person puzzle game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/the-connection
export YEAR             = 2013
export COPYRIGHT        = BK-TN

deps           = unzip
bin            = theconnection_linux.zip
dir            = theconnection_linux
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://media1.gamefront.com/moddb/2013/05/13/$(bin))
	@ $(call verifysha256,$(bin),7f6ee13923f0d2bd3d69614b56f147b0a8887d4ded9cbd1910a037857fd1ee44)

prepare:
	unzip $(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

