include ../mk/include.mk

export UPSTREAMNAME     = Env
# rename the game to not conflict with the /usr/bin/env command
export PKGNAME          = env-game
export SHORTDESCRIPTION = abstract first-person physics platformer
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/env
export YEAR             = 2014
export COPYRIGHT        = Sam Chester

deps           = unzip
bin            = Env.zip
dir            = env
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/64567/100/dfda248f3f6f8dc9c4f9ef92b9abe1aa)
	@ $(call verifysha256,$(bin),a0feae932c3aa4e0377375517447614d0c020835df3cc9ece6175e1f0602a031)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir)

