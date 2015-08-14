include ../mk/include.mk

export SHORTDESCRIPTION = horror game
export VERSION          = 1~rc1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/vanish
export YEAR             = 2013
export COPYRIGHT        = 3DrunkMen

deps           = unzip
bin            = VANISH_LinuxRC.1.zip
dir            = VANISH_LinuxRC.1
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://media1.gamefront.com/moddb/2014/07/01/$(bin))
	@ $(call verifysha256,$(bin),c1558bbb052cc47b215c2f810b128bcca462bdb93d3cb7467d9e896200731df2)

prepare:
	unzip $(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

