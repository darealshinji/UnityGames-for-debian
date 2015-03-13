include ../mk/include.mk

export UPSTREAMNAME     = Slenderman's Shadow (Demo)
export SHORTDESCRIPTION = survival horror game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.slendermansshadow.com/
export YEAR             = 2012-2013
export COPYRIGHT        = dark pathogen studios

deps           = unzip
bin            = shadow-demo.zip
icon           = shadow.png
dir            = shadow-demo
cleanfiles     = $(dir) $(icon)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.mediafire.com/?7eb6b72k86a515e)
	@ $(call download,$(icon),http://fs2.directupload.net/images/150215/dxvkr4t6.png)
	@ $(call verifysha256,$(bin),0cb93011a4fcd34f1646bbe34e8533f6653609f574f271291d7b0b6dc2510091)
	@ $(call verifysha256,$(icon),efb6dfa2d1937fdaa22bd0b88965d1b9b0dc3119f1d4dd3b559b827b185debd3)

prepare:
	unzip $(bin) -d $(dir)
	rename "s/\'//" $(dir)/*
	u2deb prepare $(dir) --icon=$(icon)

