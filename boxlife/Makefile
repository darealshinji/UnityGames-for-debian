include ../mk/include.mk

export UPSTREAMNAME     = Box Life
export PKGNAME          = boxlife
export SHORTDESCRIPTION = First person metroidvania
export VERSION          = 1.2.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.tequibo.com
export YEAR             = 2012
export COPYRIGHT        = tequibo <tequibo@gmail.com>

deps           = unzip
bin            = boxlife_linux.zip
cleanfiles     = boxlife_linux
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://secret.tequibo.com/boxlife/$(bin))
	@ $(call verifysha256,$(bin),5cf82feec3a8d2e3edc62eba6a1bda2d157fa9bcebbda4890d3e336e4834e484)

prepare:
	unzip $(bin)
	u2deb prepare boxlife_linux

