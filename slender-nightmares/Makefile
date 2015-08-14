include ../mk/include.mk

export UPSTREAMNAME     = Slender - Nightmares
export PKGNAME          = slender-nightmares
export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 0.1.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-nightmares
export YEAR             = 2013
export COPYRIGHT        = jared1016

deps           = unzip
bin            = slender-nightmares.zip
dir            = "Slender Nightmares Linux"
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/56357/109/b22e2a3fa64b3e8878e6d8a5d8aac08a)
	@ $(call verifysha256,$(bin),f214f54ecf41a056db329585be3810184262fecb0cd498588f08186a3bf5ff8a)

prepare:
	unzip $(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

