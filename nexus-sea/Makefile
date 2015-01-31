include ../mk/include.mk

export SHORTDESCRIPTION = FPS / Tower Defense Game with voxel style
export VERSION          = 0.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/nexus-sea
export YEAR             = 2014
export RIGHTHOLDER      = MetalDiamond

deps           = unzip
bin            = Nexus_Sea_Linux.zip
cleanfiles     = nexus
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2014/04/09/$(bin)"
	@ $(call verifysha256,$(bin),ea515376647ee549313aa58f623ab394841531d1c1eda1c496f7b98bc20c5113)

prepare:
	unzip $(bin) -d nexus
	u2deb prepare nexus -Z=gzip

