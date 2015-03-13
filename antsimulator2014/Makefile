include ../mk/include.mk

export UPSTREAMNAME     = Ant Simulator 2014
export SHORTDESCRIPTION = you're controlling an ant
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.ludumdare.com/compo/ludum-dare-29/?action=preview&uid=22130
export YEAR             = 2014
export COPYRIGHT        = eteeski

deps           = unzip
dir            = as2014
cleanfiles     = $(dir) *.png
distcleanfiles = $(zip)

zip          = 'AntiSimulator2014 Linux.zip'
zip_sum      = a4b2f5606785234eb0042f2304725af26e95fe97f57fe4b4b72aca5ce124b4f5
icon         = antsimulator2014.png
icon_sum     = 054f5e930fd412f7dcac918402c01ffdcb756ce0faca386971307c5f9d907ad2
icon_url     = http://fs2.directupload.net/images/150311/id7pjcxy.png
selector     = ScreenSelector.png
selector_sum = 89f39bb92f171ccd75397e09313d9be54bb009ddb9efde074e8a7e4839968f8b
selector_url = http://fs2.directupload.net/images/150311/7t6fcg4f.png


download:
	@ test -f $(zip) || (echo "download the game from $$HOMEPAGE" && echo "and place $(zip) in this directory" && exit 1)
	@ $(call download,$(icon),$(icon_url))
	@ $(call download,$(selector),$(selector_url))
	@ $(call verifysha256,$(zip),$(zip_sum))
	@ $(call verifysha256,$(icon),$(icon_sum))
	@ $(call verifysha256,$(selector),$(selector_sum))

prepare:
	unzip $(zip)
	mv 'AntiSimulator2014 Linux' $(dir)
	cp $(selector) $(dir)/AntSimulator2014_Data
	u2deb prepare $(dir) --icon=$(icon)

