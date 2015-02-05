include ../mk/include.mk

export UPSTREAMNAME     = FLARE
# there already is a FOSS game with the name "flare"
export FILENAME         = flare-unity
export SHORTDESCRIPTION = First person dungeon maze game
export VERSION          = 1.5.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/flare1
export YEAR             = 2013
export RIGHTHOLDER      = Chris 'x24sonic' Parker

deps           = unzip
bin            = FLARE_1.5_Linux.zip
cleanfiles     = flare flare-unity.png
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/10/31/$(bin)"
	test -f flare-unity.png || wget -O flare-unity.png "http://fs1.directupload.net/images/150131/f6scvgt4.png"
	@ $(call verifysha256,$(bin),4d21177ea71e395285a796c5969ebb8e9a4a3d845b87e31dec8f5c1139ad364b)
	@ $(call verifysha256,flare-unity.png,1871629fe0d10c48d2dbd61f844286134b8eecc78f02624aa58ab50872fbca64)

prepare:
	unzip $(bin)
	mv "FLARE 1.5 Linux" flare
	rm flare/*.js
	cp ../mk/ScreenSelector.png "flare/FLARE 1.5_Data"
	u2deb prepare flare --icon=flare-unity.png

