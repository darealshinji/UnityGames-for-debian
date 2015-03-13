include ../mk/include.mk

export UPSTREAMNAME     = One Late Night
export PKGNAME          = one-late-night
export SHORTDESCRIPTION = horror-game experience
export VERSION          = 0+build10
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/one-late-night
export YEAR             = 2013
export COPYRIGHT        = Black Curtain Studio

deps           = unzip
bin            = one-late-night.zip
icon           = one-late-night.png
tmp            = /tmp/UnityEngine2deb_tmp
dir            = OneLateNight_linux
cleanfiles     = $(dir)
distcleanfiles = $(bin) $(icon)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/50216/102/646e472d9a35785285743673cbd8ac02)
	@ $(call download,$(icon),http://fs1.directupload.net/images/150127/6qlocbvq.png)
	@ $(call verifysha256,$(bin),7a652f7f3e8cc3b325e29bbdf5f94abc08d6c564e0fbd5f83ae20b20c1911ee4)
	@ $(call verifysha256,$(icon),53d6ceda1b52144b6ec04fe0dd092caf7572aed791e34190abe0c819e47f7051)

prepare:
	unzip $(bin)
	u2deb prepare $(dir)/Build10 -Z=bz2 --data --icon=$(icon)
	cp $(dir)/*.docx $(tmp)
	echo '$(tmp)/*.docx' > $(tmp)/build/x86/debian/docs
	echo '$(tmp)/*.docx' > $(tmp)/build/x86_64/debian/docs

