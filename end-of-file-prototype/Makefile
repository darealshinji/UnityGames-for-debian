include ../mk/include.mk

export SHORTDESCRIPTION = first person 'perspective' puzzle game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://uncaughtexceptions.itch.io/end-of-file-prototype
export YEAR             = 2014
export RIGHTHOLDER      = Uncaught { Exceptions

deps           = unzip
bin            = EoF.zip
cleanfiles     = eof
distcleanfiles = $(bin)

download:
	test -f $(bin) || wget -O $(bin) "http://tinyurl.com/lhuw26a"
	@ $(call verifysha256,$(bin),05a5512fffbb2b5bf361b340b7748b48fb6eb260366f65be9d7ec104d38ffd29)

prepare:
	unzip $(bin) -d eof
	u2deb prepare eof -Z=bzip2 --data
	sed -i 's/Name=EoF/Name=End of File: Prototype()/' /tmp/UnityEngine2deb_tmp/build/x86/eof.desktop
	sed -i 's/Name=EoF/Name=End of File: Prototype()/' /tmp/UnityEngine2deb_tmp/build/x86_64/eof.desktop

