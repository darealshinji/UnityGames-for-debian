include ../mk/include.mk

export UPSTREAMNAME     = The Static Speaks My Name
export PKGNAME          = the-static-speaks-my-name
export SHORTDESCRIPTION = dark 1st person exploration game
export VERSION          = 1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://thewhalehusband.itch.io/thestatic
export YEAR             = 2015
export COPYRIGHT        = thewhalehusband

deps           = unzip
bin            = static.zip
dir            = static_linux
cleanfiles     = $(dir)
distcleanfiles = $(bin) *.png


download:
	@ $(call download,$(bin),http://tinyurl.com/p6ftfdf)
	@ $(call download,ScreenSelector.png,http://fs2.directupload.net/images/150319/mcclcpng.png)
	@ $(call verifysha256,$(bin),5aaee5a62aeb0d8d63e4ebfef59f6869f6722e636be1ec8a563e2d0309d40a56)
	@ $(call verifysha256,ScreenSelector.png,59292832312caa837423c0be888acde0e5e58bc529ffad5f8b1551a032254775)

prepare:
	unzip $(bin)
	mv "static linux" $(dir)
	cp ScreenSelector.png $(dir)/thestatic_linux_Data/
	rm -rf $(dir)/thestatic_mac.app
	u2deb prepare $(dir)

