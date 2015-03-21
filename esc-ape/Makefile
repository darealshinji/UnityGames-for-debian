include ../mk/include.mk

export UPSTREAMNAME     = ESC Ape
export PKGNAME          = esc-ape
export SHORTDESCRIPTION = You are an ape and you must escape
export VERSION          = 1.2
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://yanneyanen.itch.io/esc-ape
export YEAR             = 2014
export COPYRIGHT        = yanneyanen

deps           = unzip
bin            = ESC_Ape_v1.2_Linux.zip
dir            = ESC_Ape_v1.2_Linux
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),http://tinyurl.com/mr976ql)
	@ $(call verifysha256,$(bin),201db139d30c21df9507b0417a5e6f10b431c491aa07629d17a2c85464317bc1)

prepare:
	unzip $(bin)
	u2deb prepare $(dir)

