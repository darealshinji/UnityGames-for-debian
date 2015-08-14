include ../mk/include.mk

export SHORTDESCRIPTION = Space ripping stealth action
export VERSION          = 1.0+remastered
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://steelraven7.itch.io/duality
export YEAR             = 2014
export COPYRIGHT        = SteelRaven7

deps           = unzip
bin            = duality.zip
dir            = Duality_linux
cleanfiles     = $(dir)
distcleanfiles = $(bin) *.png


download:
	@ $(call download,$(bin),http://tinyurl.com/mxq2qgq)
	@ $(call download,icon.png,http://fs1.directupload.net/images/150319/qdhb4icl.png)
	@ $(call verifysha256,$(bin),8b2f8a4d1c3a0ae17c68dcc6e1de9a825bc6bbc6b34eb63239d36532f569e4ff)
	@ $(call verifysha256,icon.png,51a1d60c26d16edc04f3ed7567dd43078fc4bcf1170e7b8813f6edb20297256b)

prepare:
	unzip $(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir) --icon=icon.png

