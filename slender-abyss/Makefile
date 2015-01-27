include ../mk/include.mk

export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 0.1.5
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-abyss
export YEAR             = 2013
export RIGHTHOLDER      = Matt Sutton

deps           = unzip
bin            = slender-abyss.zip
cleanfiles     = slender-abyss
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/55410/109/a6eb05e446411b1722ab018ff63c3261"
	@ $(call verifysha256,$(bin),b05f85b5ad19bac3be077efbb9f7c409e29eaefb6399d6aa6e63d4e78de4e43e)

prepare:
	unzip $(bin)
	rm -r __MACOSX
	mv "Slender Abyss (Linux) V.0.1.5" slender-abyss
	rename 's/Slender Abyss \(Linux\)/Slender - Abyss/' slender-abyss/*
	mv "slender-abyss/Slender - Abyss" "slender-abyss/Slender - Abyss.x86"
	rm slender-abyss/.DS_Store slender-abyss/*.rtf
	u2deb prepare slender-abyss

