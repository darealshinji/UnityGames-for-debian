include ../mk/include.mk

export UPSTREAMNAME     = Cuberot
export SHORTDESCRIPTION = play as a tiny create on a rotating cube world
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://ludumdare.com/compo/author/guldlock/
export YEAR             = 2014
export COPYRIGHT        = Kevin Andersson, Martin Rasmusson, Rasmus Jarl

deps           = unzip
bin            = cuberot_linux.zip
dir            = cuberot_linux
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),https://drive.google.com/uc?export=download&id=0Byu2d8YsGno6S3hHNkQycThhN2c)
	@ $(call verifysha256,$(bin),1a3771a5eddbd4df80a28cb700c991f70100896b03b4d5097edede6504a116ad)

prepare:
	unzip $(bin)
	copyunityengine $(dir)
	u2deb prepare $(dir)

