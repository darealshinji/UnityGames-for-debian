include ../mk/include.mk

export SHORTDESCRIPTION = horror game
export VERSION          = 3.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/refuge-beta-v1
export YEAR             = 2013
export RIGHTHOLDER      = Shizuka Mori Games

deps           = unrar
bin            = Refuge_v3_Linux.rar
cleanfiles     = refuge
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/09/20/$(bin)"
	@ $(call verifysha256,$(bin),6403f887f87079bb3bc7856a16a6a5521766ad3dd57c24144cd3e37cca1cbbe2)

prepare:
	mkdir refuge
	cd refuge && unrar x ../$(bin)
	rename 's/Refuge v3 Linux86/Refuge/' refuge/*
	mv refuge/Refuge refuge/Refuge.x86
	u2deb prepare refuge -Z=bzip2

