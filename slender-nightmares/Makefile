include ../mk/include.mk

export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 0.1.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-nightmares
export YEAR             = 2013
export RIGHTHOLDER      = jared1016

deps           = unzip
bin            = slender-nightmares.zip
cleanfiles     = slender-nightmares
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/56357/109/b22e2a3fa64b3e8878e6d8a5d8aac08a"
	@ $(call verifysha256,$(bin),f214f54ecf41a056db329585be3810184262fecb0cd498588f08186a3bf5ff8a)

prepare:
	unzip $(bin)
	mv "Slender Nightmares Linux" slender-nightmares
	rm -r "slender-nightmares/Slender Nightmares Linux Universal_Data/Mono/x86"
	rename 's/Slender Nightmares Linux Universal/Slender - Nightmares/' slender-nightmares/*
	u2deb prepare slender-nightmares

