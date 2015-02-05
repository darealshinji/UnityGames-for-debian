include ../mk/include.mk

export UPSTREAMNAME     = The Midnight Game
export FILENAME         = midnightgame
export SHORTDESCRIPTION = summon the Midnight Man
export VERSION          = 1.3plus
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/the-midnight-game
export YEAR             = 2014
export RIGHTHOLDER      = Unicorn Studios

deps           = unrar
bin            = midnightgame.rar
cleanfiles     = midnightgame
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/74131/108/4f4cb93fbf2f7d345a801f74526ee041"
	@ $(call verifysha256,$(bin),dbd1d58cc770d2ddf88472b9dfcd50e2e636d60f7cb3c92ede59158cebc64441)

prepare:
	mkdir midnightgame
	unrar x $(bin) midnightgame
	rm "midnightgame/Min and Rec. Reqs..rtf"
	u2deb prepare midnightgame -Z=bz2

