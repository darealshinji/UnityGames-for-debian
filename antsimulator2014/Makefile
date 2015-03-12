include ../mk/include.mk

export UPSTREAMNAME     = Ant Simulator 2014
export SHORTDESCRIPTION = you're controlling an ant
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.ludumdare.com/compo/ludum-dare-29/?action=preview&uid=22130
export YEAR             = 2014
export RIGHTHOLDER      = eteeski

deps           = unzip
bin            = antsimulator2014.zip
cleanfiles     = as2014 *.png
distcleanfiles = $(bin)


download:
	test -f $(bin) || (echo "download the game from $$HOMEPAGE" && exit 1)
	test -f antsimulator2014.png || wget -O antsimulator2014.png "http://fs2.directupload.net/images/150311/id7pjcxy.png"
	test -f ScreenSelector.png || wget -O ScreenSelector.png "http://fs2.directupload.net/images/150311/7t6fcg4f.png"
	@ $(call verifysha256,$(bin),a4b2f5606785234eb0042f2304725af26e95fe97f57fe4b4b72aca5ce124b4f5)
	@ $(call verifysha256,antsimulator2014.png,054f5e930fd412f7dcac918402c01ffdcb756ce0faca386971307c5f9d907ad2)
	@ $(call verifysha256,ScreenSelector.png,89f39bb92f171ccd75397e09313d9be54bb009ddb9efde074e8a7e4839968f8b)

prepare:
	unzip $(bin)
	mv 'AntiSimulator2014 Linux' as2014
	cp ScreenSelector.png as2014/AntSimulator2014_Data
	u2deb prepare as2014 --icon=antsimulator2014.png

