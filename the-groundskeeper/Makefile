include ../mk/include.mk

export UPSTREAMNAME     = The Groundskeeper
export PKGNAME          = groundskeeper
export SHORTDESCRIPTION = first-person horror game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/the-groundskeeper
export YEAR             = 2013
export COPYRIGHT        = Pedestrian Crossing Games

deps           = unzip
bin            = TheGroundskeeperLinux.zip
dir            = TheGroundskeeper
builddir       = /tmp/UnityEngine2deb_tmp/build/x86
cleanfiles     = $(dir) README
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://media1.gamefront.com/moddb/2013/12/14/$(bin))
	@ $(call verifysha256,$(bin),1c33d949b95338da8428f558ad31a196db043eb78c8f7c3db955b561a71804fe)

prepare:
	unzip $(bin)
	mv $(dir)\(Linux\) $(dir)
	cp $(dir)/"ReadMe (Please Read).txt" README
	u2deb prepare $(dir)
	cp README $(builddir)
	echo README > $(builddir)/debian/docs

