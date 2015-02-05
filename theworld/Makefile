include ../mk/include.mk

export UPSTREAMNAME     = [TheWorld]
export SHORTDESCRIPTION = Alpha MMORPG
export VERSION          = 2.0.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/theworld
export YEAR             = 2014
export RIGHTHOLDER      = siegfre

deps           = unzip
bin            = TheWorldClient_Linux_2_0_2_x86.zip
cleanfiles     = theworld
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2014/09/20/$(bin)"
	@ $(call verifysha256,$(bin),36ee8038e0bf14eb051306ab48b542a75ec569b7fab57f299131c3ecfc6685e5)

prepare:
	unzip $(bin) -d theworld
	rename 's/\[TheWorld\]Client_Linux/TheWorld/' theworld/*
	cp ../mk/ScreenSelector.png theworld/TheWorld_Data
	u2deb prepare theworld -Z=gzip

