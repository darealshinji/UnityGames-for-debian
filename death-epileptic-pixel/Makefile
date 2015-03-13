include ../mk/include.mk

export SHORTDESCRIPTION = abstract and colorful first-person platformer
export VERSION          = 1.5.9
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.desura.com/games/death-epileptic-pixel
export YEAR             = 2014
export COPYRIGHT        = Guiliam

deps           = unzip
bin            = dep.zip
dir            = dep
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.desura.com/gamedownloads/get/18930)
	@ $(call verifysha256,$(bin),13fa1dc47db56f0d363066e5eb04f97343a399f496eb83c577fb01d56f29904c)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir) --data
