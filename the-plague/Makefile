include ../mk/include.mk

export UPSTREAMNAME     = The Plague
export SHORTDESCRIPTION = 17th century horror game
export VERSION          = 1.7
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/the-halloween-plague
export YEAR             = 2014
export COPYRIGHT        = SlothyGames

deps           = unrar
bin            = plague.rar
selector       = ScreenSelector.png
dir            = "The Plague - Linux"
cleanfiles     = $(dir) *.png
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.indiedb.com/downloads/mirror/76491/110/88f29fd6e174a444b0f71e0d9e51d633)
	@ $(call download,$(selector),http://fs1.directupload.net/images/150218/2oavt5m2.png)
	@ $(call verifysha256,$(bin),99cde32d1691b3b71ae7cbd5174a05b37bd26bd92abd0024eb4ad877081dff2e)
	@ $(call verifysha256,$(selector),eca98f50978adc34c85620a968e45a18f62177ed69b39ae4f2d05d8cb3fecd27)

prepare:
	unrar x $(bin)
	rm -r $(dir)/Images
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

