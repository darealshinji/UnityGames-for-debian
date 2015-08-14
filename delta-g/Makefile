include ../mk/include.mk

export UPSTREAMNAME     = Δg
export SHORTDESCRIPTION = 3D-rendered 2D side scrolling physics puzzle platformer
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.maximumverbosity.net/1GAM/2013/02/
export YEAR             = 2013
export COPYRIGHT        = gnustoboz

deps           = unzip
bin            = delta_g.linux.zip
dir            = delta-g
cleanfiles     = $(dir)
distcleanfiles = $(bin) icon.png


download:
	@ $(call download,$(bin),http://www.maximumverbosity.net/1GAM/2013/02/delta_g.linux.zip)
	@ $(call download,icon.png,http://fs1.directupload.net/images/150321/yqteis5m.png)
	@ $(call verifysha256,$(bin),971e3b4999351bb91fa035f115120aa37c78045b117ddd2bc2ba92122ad3b839)
	@ $(call verifysha256,icon.png,f8776977b538aec99b2673797213592e09f6b54829b0e37a6a8cb29f4af7a9e7)

prepare:
	unzip $(bin) -d $(dir)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir) --icon=icon.png

