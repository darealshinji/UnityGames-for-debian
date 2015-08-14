include ../mk/include.mk

export SHORTDESCRIPTION = Slender Man horror game
export VERSION          = 0.1.9
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/slender-anxiety
export YEAR             = 2014
export COPYRIGHT        = Hades Productions

deps           = unrar
bin            = slender-anxiety.rar
dir            = "Slender - Anxiety (LINUX) v0.1.9"
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/59235/100/dde4a1f94f4cb2403717b06291f15dee)
	@ $(call verifysha256,$(bin),d9edad1286d87789bb78c038523075280dd4cf6c2fe0eb10f5dcbdcf3cd5212f)

prepare:
	unrar x $(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

