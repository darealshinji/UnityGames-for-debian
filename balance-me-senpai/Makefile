include ../mk/include.mk

export UPSTREAMNAME     = Balance me Senpai
export PKGNAME          = balance-me-senpai
export SHORTDESCRIPTION = Balance me Senpai
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.moddb.com/games/balance-me-senpai
export YEAR             = 2014
export COPYRIGHT        = Unicorn Studios

deps           = unrar
bin            = Balance_me_Senpai_-_Linux.rar
dir            = balance
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://www.moddb.com/downloads/mirror/73917/110/027514e43c39f8dba6c9598fee14508a)
	@ $(call verifysha256,$(bin),1f054b9f00138d8b82b090934722236bcde03b68a4956aebdb325251564631cc)

prepare:
	mkdir $(dir)
	unrar x $(bin) $(dir)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

