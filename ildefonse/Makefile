include ../mk/include.mk

export UPSTREAMNAME     = Ildefonse
export FILENAME         = ildefonse
export SHORTDESCRIPTION = first-person horror game
export VERSION          = 1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/ildefonse
export YEAR             = 2013
export RIGHTHOLDER      = a4ndr3c

deps           = unrar
bin            = Ildefonse.rar
cleanfiles     = Ildefonse *.png
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/03/11/$(bin)"
	test -f ildefonse.png || wget -O ildefonse.png "http://fs1.directupload.net/images/150131/mqbsqexj.png"
	@ $(call verifysha256,$(bin),41a326c9f7254843035a65ccf028c73e33f403ee12c2e00798afda5ae5befd50)
	@ $(call verifysha256,ildefonse.png,ca26950a82b647efe958cb5c1c820c1aa0e0743b244fc73d1ff6787d94f87c1a)

prepare:
	mkdir Ildefonse
	cd Ildefonse && unrar x ../$(bin)
	mv Ildefonse/Ildefonse_linux Ildefonse/Ildefonse_linux.x86
	u2deb prepare Ildefonse -Z=bz2 --icon=ildefonse.png

