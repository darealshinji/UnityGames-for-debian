include ../mk/include.mk

export UPSTREAMNAME     = Of Guards And Thieves
export PKGNAME          = ofguardsandthieves
export SHORTDESCRIPTION = teamplay, stealthy movement, action, tactics and timing
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.ofguardsandthieves.com
export YEAR             = 2013-2014
export COPYRIGHT        = Subvert Games

bin            = OGAT.tar.gz
url            = $(shell wget -q -O - http://www.ofguardsandthieves.com/download | grep 'OGAT-linux.tar.gz' | cut -d'"' -f2)
#url           = http://www.indiedb.com/downloads/mirror/55164/113/821991005ebc0664b3580fb848584efd
#bin_sum       = 9552d60ee5d1e2838c66d8c227f010fd4433e714a2d5de2978bb74d6e6a44516
dir            = 'Of Guards And Thieves'
builddir       = /tmp/UnityEngine2deb_tmp/build/$(ARCH)
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),$(url))

prepare:
	tar xvf $(bin)
	u2deb prepare $(dir)
	$(foreach ARCH, x86 x86_64,\
	  cp ofguardsandthieves $(builddir) ;\
	  cat override_dh_install >> $(builddir)/debian/rules ;\
	  echo 'image-file-in-usr-lib */UnityPlayer.png' >> $(builddir)/debian/lintian-overrides ;)

