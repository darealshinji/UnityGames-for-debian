include ../mk/include.mk

export UPSTREAMNAME     = Hyper Gauntlet: The Legacy of Nozzlethrust III
export SHORTDESCRIPTION = manic-paced arcade first person infinite runner
export VERSION          = 0.9
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.indiedb.com/games/hypergauntlet
export YEAR             = 2013
export RIGHTHOLDER      = udellgames

deps           = unzip
bin            = hg.zip
cleanfiles     = hg
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget -O $(bin) "http://www.indiedb.com/downloads/mirror/61678/107/ec260caa3b10358a2542a43977e18a9e"
	@ $(call verifysha256,$(bin),917c1136d020386ccb4d98a66c5a88abde43cfc062008a665ebf082418a5ac46)

prepare:
	unzip $(bin) -d hg
	u2deb prepare hg

