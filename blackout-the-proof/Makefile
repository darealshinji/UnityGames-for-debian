include ../mk/include.mk

export FILENAME         = blackout-the-proof
export SHORTDESCRIPTION = Slender Man based horror game
export VERSION          = 1.1
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/black-outthe-proof
export YEAR             = 2013
export RIGHTHOLDER      = Gothard Edward

deps           = unzip
bin            = LINUXBlackOutTheProof.zip
cleanfiles     = blackout
distcleanfiles = $(bin) icon.png


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/03/03/$(bin)"
	test -f icon.png || wget -O icon.png "http://fs1.directupload.net/images/150127/5bjkv9cq.png"
	@ $(call verifysha256,$(bin),75e13df5dab03c1566f7c992f0bbe4562e982e9ca95246fbc261fc20fa36e3dd)
	@ $(call verifysha256,icon.png,7aba05059c0cbfba4f650e8cf1a10a32946327ca6b9145775d100dfc19c21ce8)

prepare:
	unzip $(bin) -d blackout
	u2deb prepare blackout --data --icon=icon.png

