include ../mk/include.mk

export UPSTREAMNAME     = Night Shadows
export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 1.2.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://gamejolt.com/games/night-shadows/82661
export YEAR             = 2015
export COPYRIGHT        = Basilic Apps

deps           = unzip
dir            = Night-Shadows
bin            = $(dir).tar.xz
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),https://www.dropbox.com/s/m5riupk18fal5kr/Night-Shadows-1.2.1.tar.xz?dl=1)
	@ $(call verifysha256,$(bin),7181edb975a367409584dd79c040e33af5ddf39373db53f43d0d5e6d16ea1cc7)

prepare:
	tar xvfJ $(bin)
	u2deb prepare $(dir)

