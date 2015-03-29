include ../mk/include.mk

export UPSTREAMNAME     = Adams Drive 32
export SHORTDESCRIPTION = fps stealth game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://primaerfunktion.itch.io/adams-drive-32
export YEAR             = 2014
export COPYRIGHT        = René Rother <renerother@gmail.com>

deps           = unzip
bin            = adamsdrive32.zip
cleanfiles     = linux
distcleanfiles = $(bin) *.png


download:
	@ $(call download,$(bin),http://tinyurl.com/ptf5whr)
	@ $(call download,icon.png,http://fs2.directupload.net/images/150329/byxsaefx.png)
	@ $(call download,ScreenSelector.png,http://fs1.directupload.net/images/150329/ns3wntx7.png)
	@ $(call verifysha256,$(bin),2fe9484d681776cc91602eee708c619b6656f048715ecbbb353afebf8ad3acea)
	@ $(call verifysha256,icon.png,bb3fe438f5212c2a0a6356d34a938afae867d49565a2f8244fec7b2a42e25c17)
	@ $(call verifysha256,ScreenSelector.png,c369de291e0d93c089820fce9c150f44a11e521169d49eccb03b6f52d093032a)

prepare:
	unzip $(bin)
	cp -f ScreenSelector.png linux/adamsdrive32_Data
	u2deb prepare linux --icon=icon.png

