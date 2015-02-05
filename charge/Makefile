include ../mk/include.mk

export UPSTREAMNAME     = CHARGE!
# conflicts with /usr/bin/charge from the package "emboss"
export FILENAME         = charge-game
export SHORTDESCRIPTION = race between electrical sources to keep your heart beating
export VERSION          = 1.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/charge
export YEAR             = 2013
export RIGHTHOLDER      = Wildgrass

deps           = unzip
bin            = charge.zip
cleanfiles     = Linux
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/57095/108/e53274cbecfd3665a3ac2d7f10516720"
	@ $(call verifysha256,$(bin),b3510c286736038e70a7f3df8faf9258cfe744b8eac50eea02ff082d7f93bd16)

prepare:
	unzip $(bin)
	mv Linux/CHARGE Linux/CHARGE.x86
	u2deb prepare Linux

