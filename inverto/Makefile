include ../mk/include.mk

export UPSTREAMNAME     = Inverto Demo
export PKGNAME          = inverto-demo
export SHORTDESCRIPTION = first person shooter-puzzler
export VERSION          = 0.41a
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/gravitron
export YEAR             = 2013
export COPYRIGHT        = Gravity Box Studio

bin            = InvertoAlpha041_Linux.tar.gz
bin_url        = http://www.inverto.gravityboxstudio.net/downloads/InvertoAlpha_Linux.tar.gz
#bin_url       = http://media1.gamefront.com/moddb/2013/08/08/$(bin)
cleanfiles     = InvertoLinux
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),$(bin_url))
	@ $(call verifysha256,$(bin),7dcacfbc26b1c50f071571c30f62f64085c825439d567f4b7ce493b106b25c91)

prepare:
	tar xvf $(bin)
	u2deb prepare InvertoLinux

