include ../mk/include.mk

export UPSTREAMNAME     = Of Guards And Thieves
export FILENAME         = ofguardsandthieves
export SHORTDESCRIPTION = teamplay, stealthy movement, action, tactics and timing
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.ofguardsandthieves.com
export YEAR             = 2014
export RIGHTHOLDER      = Subvert Games

bin            = OGAT.tar.gz
cleanfiles     = "Of Guards And Thieves"
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.indiedb.com/downloads/mirror/55164/113/821991005ebc0664b3580fb848584efd"
	@ $(call verifysha256,$(bin),9552d60ee5d1e2838c66d8c227f010fd4433e714a2d5de2978bb74d6e6a44516)

prepare:
	tar xvf $(bin)
	u2deb prepare "Of Guards And Thieves"
	$(foreach ARCH, x86 x86_64,\
		cp ofguardsandthieves /tmp/UnityEngine2deb_tmp/build/$(ARCH) ;\
		cat override_dh_install >> /tmp/UnityEngine2deb_tmp/build/$(ARCH)/debian/rules ;\
		echo 'image-file-in-usr-lib */UnityPlayer.png' >> /tmp/UnityEngine2deb_tmp/build/$(ARCH)/debian/lintian-overrides ;)

