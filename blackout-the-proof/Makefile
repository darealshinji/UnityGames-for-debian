include ../mk/include.mk

export PKGNAME          = blackout-the-proof
export SHORTDESCRIPTION = Slender Man based horror game
export VERSION          = 1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/black-outthe-proof
export YEAR             = 2013
export COPYRIGHT        = Gothard Edward

deps           = unzip
dir            = blackout
cleanfiles     = $(dir)
distcleanfiles = $(bin) $(icon)

bin      = LINUXBlackOutTheProof.zip
bin_sum  = 75e13df5dab03c1566f7c992f0bbe4562e982e9ca95246fbc261fc20fa36e3dd
bin_url  = http://media1.gamefront.com/moddb/2013/03/03/$(bin)
icon     = blackout-the-proof.png
icon_sum = 7aba05059c0cbfba4f650e8cf1a10a32946327ca6b9145775d100dfc19c21ce8
icon_url = http://fs1.directupload.net/images/150127/5bjkv9cq.png


download:
	@ $(call download,$(bin),$(bin_url))
	@ $(call download,$(icon),$(icon_url))
	@ $(call verifysha256,$(bin),$(bin_sum))
	@ $(call verifysha256,$(icon),$(icon_sum))

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir) --data --icon=$(icon)

