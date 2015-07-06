include ../mk/include.mk

export UPSTREAMNAME     = SUPERHOT Prototype
export PKGNAME          = superhot-prototype
export SHORTDESCRIPTION = fps game where time moves only when you move
export VERSION          = 2013.09
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.superhotgame.com
export YEAR             = 2013
export COPYRIGHT        = the SUPERHOT developers: Piotr Iwanicki, Marcin Surma, Marek Bączyński, Jakub Ziembiński, Tomasz Kaczmarczyk, Piotr Kosmala

deps           = unzip
bin            = SUPERHOT_Prototype_Linux.zip
icon           = sh.png
cleanfiles     = Linux
distcleanfiles = $(bin) $(icon)


download:
	@ $(call download,$(bin),http://superhotgame-new.azurewebsites.net/BUILDS/$(bin))
	@ $(call download,$(icon),http://fs1.directupload.net/images/150103/8jk9r9gd.png)
	@ $(call verifysha256,$(bin),5b074dc815508d5e2552d488479c0abf157de8d5b92a4f36f05a706577122ec0)
	@ $(call verifysha256,$(icon),b460982fb454d504474c33cf6c7f6f4367f1a611208d121a791cd4ac764fff73)

prepare:
	unzip $(bin)
	cp $(icon) "Linux/SUPERHOT September 2013_Data/ScreenSelector.png"
	u2deb prepare Linux --icon=$(icon)

