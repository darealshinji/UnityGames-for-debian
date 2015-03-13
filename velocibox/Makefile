include ../mk/include.mk

export SHORTDESCRIPTION = fast action game
export VERSION          = 8.0.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/velocibox
export YEAR             = 2014
export COPYRIGHT        = Shawn Beck

deps           = unzip
bin            = Velocibox_Demo_8.0.0_Linux.zip
dir            = Velocibox
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://media1.gamefront.com/moddb/2014/11/07/$(bin))
	@ $(call verifysha256,$(bin),70409e3f94885dbbc5fc04d33e102e0ca342509ef1c994685dc512d1fb27ee6e)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir)

