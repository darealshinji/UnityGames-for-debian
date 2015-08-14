include ../mk/include.mk

export UPSTREAMNAME     = The Midnight Game
export PKGNAME          = midnightgame
export SHORTDESCRIPTION = summon the Midnight Man
export VERSION          = 1.3plus
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/the-midnight-game
export YEAR             = 2014
export COPYRIGHT        = Unicorn Studios

deps           = unrar
bin            = midnightgame.rar
dir            = midnightgame
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/74131/108/4f4cb93fbf2f7d345a801f74526ee041)
	@ $(call verifysha256,$(bin),dbd1d58cc770d2ddf88472b9dfcd50e2e636d60f7cb3c92ede59158cebc64441)

prepare:
	mkdir $(dir)
	unrar x $(bin) $(dir)
	rm "$(dir)/Min and Rec. Reqs..rtf"
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

