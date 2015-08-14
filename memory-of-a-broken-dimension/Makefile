include ../mk/include.mk

export UPSTREAMNAME     = Memory of a Broken Dimension
export PKGNAME          = mobd-prototype
export SHORTDESCRIPTION = abstract cyberspace simulation
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://xra.itch.io/memory-of-a-broken-dimension
export YEAR             = 2012
export COPYRIGHT        = xra

deps           = unzip
bin            = MOBD.zip
dir            = MOBD
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://tinyurl.com/p9lrt6s)
	@ $(call verifysha256,$(bin),f92438c33b9bf17d7b423cea7ef22e35aaccfabd566bb255f109e90e34c5d831)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir)

