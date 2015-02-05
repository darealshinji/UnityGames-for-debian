include ../mk/include.mk

export UPSTREAMNAME     = Gunscape
export FILENAME         = gunscape
export SHORTDESCRIPTION = First-person shooter
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.playgunscape.com/
export YEAR             = 2015
export RIGHTHOLDER      = Blowfish Studios

deps           = unzip
bin            = gunscape-linux.zip
cleanfiles     = gunscape-linux
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "https://playgunscape.com/downloadgunscape/$(bin)"

prepare:
	unzip $(bin)
	rm -r __MACOSX
	export VERSION=`ls gunscape-linux/*.x86 | cut -d 'v' -f2 | sed 's/.x86//'` ;\
	u2deb prepare gunscape-linux -Z=bz2

