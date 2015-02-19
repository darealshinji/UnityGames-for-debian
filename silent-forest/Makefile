include ../mk/include.mk

export UPSTREAMNAME     = Silent Forest
export FILENAME         = silent-forest
export SHORTDESCRIPTION = survival horror game
export VERSION          = 1.02
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/silentforest
export YEAR             = 2014
export RIGHTHOLDER      = NoserverStudios

deps           = unzip
bin            = silent-forest.zip
cleanfiles     = silent-forest
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.indiedb.com/downloads/mirror/80169/108/d8c0f6f50b438d00fd34a780fa283b4c"
	@ $(call verifysha256,$(bin),aae248900014eebabbeede0ff2baf8a5313571b44a5da88c5b21a12f4ffd982d)

prepare:
	unzip $(bin) -d silent-forest
	rm -rf silent-forest/Extern_Resources silent-forest/*.rtf silent-forest/*.ini
	u2deb prepare silent-forest

