include ../mk/include.mk

export UPSTREAMNAME     = Delta g Arena
export SHORTDESCRIPTION = first person variable gravity training exercise
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://gnustoboz.itch.io/delta-g-arena
export YEAR             = 2014
export COPYRIGHT        = gnustoboz

deps           = unzip
bin            = Delta_g_Arena.linux.zip
dir            = delta-g-arena
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://tinyurl.com/opomhoe)
	@ $(call verifysha256,$(bin),7ec5c69a36409de08000e8548025ca22417088c55d7351b1aec00ab62b99c05e)

prepare:
	unzip $(bin) -d $(dir)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

