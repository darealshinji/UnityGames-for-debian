include ../mk/include.mk

export UPSTREAMNAME     = End of File: Prototype()
export PKGNAME          = end-of-file-prototype
export SHORTDESCRIPTION = first person 'perspective' puzzle game
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://uncaughtexceptions.itch.io/end-of-file-prototype
export YEAR             = 2014
export COPYRIGHT        = Uncaught { Exceptions

deps           = unzip
bin            = EoF.zip
dir            = eof
cleanfiles     = $(dir)
distcleanfiles = $(bin)

download:
	@ $(call download,$(bin),http://tinyurl.com/lhuw26a)
	@ $(call verifysha256,$(bin),05a5512fffbb2b5bf361b340b7748b48fb6eb260366f65be9d7ec104d38ffd29)

prepare:
	unzip $(bin) -d $(dir)
	u2deb prepare $(dir) -Z=bzip2 --data

