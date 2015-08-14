include ../mk/include.mk

export UPSTREAMNAME     = Slender - Abyss
export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 0.1.5
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-abyss
export YEAR             = 2013
export COPYRIGHT        = Matt Sutton

deps           = unzip
bin            = slender-abyss.zip
dir            = slender-abyss
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/55410/109/a6eb05e446411b1722ab018ff63c3261)
	@ $(call verifysha256,$(bin),b05f85b5ad19bac3be077efbb9f7c409e29eaefb6399d6aa6e63d4e78de4e43e)

prepare:
	unzip $(bin)
	rm -r __MACOSX
	mv "Slender Abyss (Linux) V.0.1.5" $(dir)
	rename 's/Slender Abyss \(Linux\)/$(dir)/' $(dir)/*
	rm $(dir)/*.rtf
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

