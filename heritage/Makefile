include ../mk/include.mk

export SHORTDESCRIPTION = investigate the death of your grandmother
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/heritage
export YEAR             = 2012
export RIGHTHOLDER      = BLF-GAMES and SmokeStudio

deps           = unzip
bin            = heritage.zip
cleanfiles     = heritage *.jpg
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.indiedb.com/downloads/mirror/51440/109/ba3d38e3910d343ed7c1fd25a663ef53"
	test -f heritage-game.jpg || wget -O heritage-game.jpg "http://media.indiedb.com/images/games/1/17/16625/HeritageIcon.jpg"
	@ $(call verifysha256,$(bin),f2d2eb6bab64f13332c77b40a78173c9cf28d39e00619960ca02f8fdc5e21fd5)

prepare:
	unzip $(bin)
	mv 'BLF_Heritage_BUILD_Linux(x84_x64)' heritage
	u2deb prepare heritage --data --icon=heritage-game.jpg

