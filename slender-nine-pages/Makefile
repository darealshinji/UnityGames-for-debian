include ../mk/include.mk

export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 1.3plus
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-the-nine-pages
export YEAR             = 2013
export RIGHTHOLDER      = petrzmax

deps           = unrar 
bin            = Slender_The_Nine_Pages_v1.3_for_Linux.rar
cleanfiles     = ninepages
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/05/10/$(bin)"
	@ $(call verifysha256,$(bin),86c441dbee8bd2349614b5c45c86eddd5998996f5cc3798abb73570456b65023)

prepare:
	unrar x $(bin)
	mv "Slender The Nine Pages + for Linux" ninepages
	rename 's/Slender The Nine Pages/Slender - The Nine Pages/' ninepages/*
	mv "ninepages/Slender The Nine Pages" "ninepages/Slender The Nine Pages.x86"
	rm ninepages/*.txt
	u2deb prepare ninepages

