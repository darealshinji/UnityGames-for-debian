include ../mk/include.mk

export UPSTREAMNAME     = Gunscape
export PKGNAME          = gunscape
export SHORTDESCRIPTION = first-person shooter
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.playgunscape.com/
export YEAR             = 2015
export COPYRIGHT        = Blowfish Studios

deps           = unzip
bin            = gunscape-linux.zip
dir            = gunscape-linux
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),https://playgunscape.com/downloadgunscape/$(bin))

prepare:
	unzip $(bin)
	rm -rf __MACOSX
	export VERSION=`ls $(dir)/*.x86 | cut -d 'v' -f2 | sed 's/.x86//'` ;\
	u2deb prepare $(dir) -Z=bz2

