include ../mk/include.mk

export SHORTDESCRIPTION = Balance me Senpai
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/balance-me-senpai
export YEAR             = 2014
export RIGHTHOLDER      = Unicorn Studios

deps           = unrar
bin            = Balance_me_Senpai_-_Linux.rar
cleanfiles     = balance
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.moddb.com/downloads/mirror/73917/110/027514e43c39f8dba6c9598fee14508a"
	@ $(call verifysha256,$(bin),1f054b9f00138d8b82b090934722236bcde03b68a4956aebdb325251564631cc)

prepare:
	mkdir balance
	unrar x $(bin) balance
	rename 's/Balance me Senpai - Linux/Balance me Senpai/' balance/*
	u2deb prepare balance

