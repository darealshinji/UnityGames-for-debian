include ../mk/include.mk

export UPSTREAMNAME     = Slender - The Nine Pages
export PKGNAME          = slender-nine-pages
export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 1.3plus
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-the-nine-pages
export YEAR             = 2013
export COPYRIGHT        = petrzmax

deps           = unrar 
bin            = Slender_The_Nine_Pages_v1.3_for_Linux.rar
dir            = "Slender The Nine Pages + for Linux"
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://media1.gamefront.com/moddb/2013/05/10/$(bin))
	@ $(call verifysha256,$(bin),86c441dbee8bd2349614b5c45c86eddd5998996f5cc3798abb73570456b65023)

prepare:
	unrar x $(bin)
	u2deb prepare $(dir)

