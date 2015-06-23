include ../mk/include.mk

export SHORTDESCRIPTION = first person adventure horror game
export VERSION          = 1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/haunt
export YEAR             = 2012
export COPYRIGHT        = paranormaldev

deps           = unzip
bin            = haunt.zip
dir            = haunt
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/52951/102/e3332160909cd209d6c2346eade4a553)
	@ $(call verifysha256,$(bin),012f8af5e278280758a7815babb36935a066ca836dd60e2c092a893dfadfe144)

prepare:
	unzip $(bin) -d $(dir)
	rename 's/Haunt_1.1/Haunted Memories/' $(dir)/*
	rename 's/Haunt_1/Haunted Memories/' $(dir)/*
	u2deb prepare $(dir) --gzip --data

