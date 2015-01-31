include ../mk/include.mk

export SHORTDESCRIPTION = first-person horror game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/the-groundskeeper
export YEAR             = 2013
export RIGHTHOLDER      = Pedestrian Crossing Games

deps           = unzip
bin            = TheGroundskeeperLinux.zip
cleanfiles     = TheGroundskeeper README
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/12/14/$(bin)"
	@ $(call verifysha256,$(bin),1c33d949b95338da8428f558ad31a196db043eb78c8f7c3db955b561a71804fe)

prepare:
	unzip $(bin)
	mv TheGroundskeeper\(Linux\) TheGroundskeeper
	rename 's/TheGroundskeeper/The Groundskeeper/' TheGroundskeeper/*
	mv "TheGroundskeeper/ReadMe (Please Read).txt" README
	u2deb prepare TheGroundskeeper -Z=bzip2
	cp README /tmp/UnityEngine2deb_tmp/build/x86
	echo README > /tmp/UnityEngine2deb_tmp/build/x86/debian/docs

