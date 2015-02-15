include ../mk/include.mk

export UPSTREAMNAME     = Slenderman's Shadow (Demo)
export SHORTDESCRIPTION = survival horror game
export VERSION          = 1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.slendermansshadow.com/
export YEAR             = 2012-2013
export RIGHTHOLDER      = dark pathogen studios

deps           = unzip
bin            = demo.zip
cleanfiles     = demo dxvkr4t6.png
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) 'http://www.mediafire.com/?7eb6b72k86a515e'
	wget http://fs2.directupload.net/images/150215/dxvkr4t6.png
	@ $(call verifysha256,$(bin),0cb93011a4fcd34f1646bbe34e8533f6653609f574f271291d7b0b6dc2510091)

prepare:
	unzip $(bin) -d demo
	mv "demo/Slenderman's Shadow Demo" "demo/Slendermans Shadow Demo.x86"
	mv "demo/Slenderman's Shadow Demo_Data" "demo/Slendermans Shadow Demo_Data"
	rm demo/README.txt
	u2deb prepare demo --icon=dxvkr4t6.png

