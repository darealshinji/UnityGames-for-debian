include ../mk/include.mk

export SHORTDESCRIPTION = cinematic platformer game
export VERSION          = 0.11~demo
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.monochromagame.com/
export YEAR             = 2013
export COPYRIGHT        = Nowhere Studios

deps           = unzip
bin            = Monochroma_Kickstarter_Linux_Demo_v0.11.zip
cleanfiles     = MonochromaBin_Kickstarter_Linux
distcleanfiles = $(bin)

download:
	@ $(call download,$(bin),http://www.indiedb.com/downloads/mirror/57069/107/6aad2c29e537aac4afeef4fc7c65cd77)
	@ $(call verifysha256,$(bin),a739ccf452bbb429d31463e6f6cc9a66f1273286959b83298692688dd5810ff4)

prepare:
	unzip $(bin)
	u2deb prepare MonochromaBin_Kickstarter_Linux -Z=bzip2 --data

