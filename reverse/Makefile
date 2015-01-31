include ../mk/include.mk

export SHORTDESCRIPTION = point A to point B mirror logic based puzzler game
export VERSION          = 1.0.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/reverse
export YEAR             = 2012-2013
export RIGHTHOLDER      = Andrew Lloyd

deps           = unzip
bin            = ReversE_Linux_Demo_1.0.0.zip
cleanfiles     = reverse
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "http://media1.gamefront.com/moddb/2013/01/11/$(bin)"
	@ $(call verifysha256,$(bin),6387c3996999075fe25bbb23472dca75d84bc9ca297030f39e6f9f349e246c1a)

prepare:
	unzip $(bin)
	mv "ReversE Linux Demo 1.0.0 (5)" reverse
	rename 's/ReversELinuxDemo/ReversE Demo/' reverse/*
	u2deb prepare reverse

