include ../mk/include.mk

export UPSTREAMNAME     = Psycho Strafe
export SHORTDESCRIPTION = arcade action FPS
export VERSION          = 0.1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://xra.itch.io/psycho-strafe
export YEAR             = 2014
export COPYRIGHT        = xra

deps           = unzip execstack
bin            = PSYCHOSTRAFE_0.1.1_LINUX.zip
dir            = psychostrafe
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://tinyurl.com/m5poz9f)
	@ $(call verifysha256,$(bin),e29436e44cb5f07855563683e3e995c58ddb1e4201e9d40afcc316efccc0e2c3)

prepare:
	unzip $(bin) -d $(dir)
	execstack -c $(dir)/PSYCHOSTRAFE_Data/Plugins/x86/libfmod.so
	execstack -c $(dir)/PSYCHOSTRAFE_Data/Plugins/x86_64/libfmod.so
	u2deb prepare $(dir)

