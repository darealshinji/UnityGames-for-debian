include ../mk/include.mk

export UPSTREAMNAME     = The Plague
export FILENAME         = the-plague
export SHORTDESCRIPTION = 17th century horror game
export VERSION          = 1.7
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/the-halloween-plague
export YEAR             = 2014
export RIGHTHOLDER      = SlothyGames

deps           = unrar
bin            = plague.rar
DIR            = The Plague - Linux
cleanfiles     = "$(DIR)" *.png
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.indiedb.com/downloads/mirror/76491/110/88f29fd6e174a444b0f71e0d9e51d633"
	test -f ScreenSelector.png || wget -O ScreenSelector.png "http://fs1.directupload.net/images/150218/2oavt5m2.png"
	@ $(call verifysha256,$(bin),99cde32d1691b3b71ae7cbd5174a05b37bd26bd92abd0024eb4ad877081dff2e)

prepare:
	unrar x $(bin)
	rm -r "$(DIR)/Images"
	cp ScreenSelector.png "$(DIR)/The Plague_Data"
	u2deb prepare "$(DIR)"

