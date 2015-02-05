include ../mk/include.mk

export UPSTREAMNAME     = Env
# rename the game to not conflict with the /usr/bin/env command
export FILENAME         = env-game
export SHORTDESCRIPTION = abstract first-person physics platformer
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/env
export YEAR             = 2014
export RIGHTHOLDER      = Sam Chester

deps           = unzip
bin            = Env.zip
cleanfiles     = env
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/64567/100/dfda248f3f6f8dc9c4f9ef92b9abe1aa"
	@ $(call verifysha256,$(bin),a0feae932c3aa4e0377375517447614d0c020835df3cc9ece6175e1f0602a031)

prepare:
	unzip $(bin) -d env
	cp ../mk/ScreenSelector.png env/Env_Data
	u2deb prepare env

