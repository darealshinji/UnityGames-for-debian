include ../mk/include.mk

export SHORTDESCRIPTION = First Person Shooter horror game
export VERSION          = 1.0.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/blinding-dark
export YEAR             = 2014
export RIGHTHOLDER      = primus88

deps           = unzip
bin            = BlindingDark_Linux_Demo.zip
cleanfiles     = blindingdark
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2014/02/12/$(bin)"
	@ $(call verifysha256,$(bin),84a3abce54a42a80376d47c66b4a05bac3b3320c8fec7351d82861f473f00d2e)

prepare:
	unzip $(bin) -d blindingdark
	rename 's/BlindingDark_Linux_v1.0.0/Blinding Dark/' blindingdark/*
	u2deb prepare blindingdark --data -Z=gzip

