include ../mk/include.mk

export SHORTDESCRIPTION = minimalist 3D platform/racing game 
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://princesseuh.eu
export YEAR             = 2013
export COPYRIGHT        = Princesseuh

deps           = p7zip-full
bin            = SinaRun.7z
dir            = sinarun
cleanfiles     = $(dir)
distcleanfiles = $(bin)

download:
	@ $(call download,$(bin),https://dl.dropboxusercontent.com/s/63bpcau9i07yv14/$(bin)?token_hash=AAF1Nox91mv08O7B_LbuUWWwSIta1WYz5O1ck3ugV8EBXQ&dl=1)
	@ $(call verifysha256,$(bin),e54fbbd2881a4677185e1101f11103614e7c46ceed4a630e7d3c5a6dd046fdc7)

prepare:
	rm -rf $(dir)
	mkdir -p $(dir)
	cd $(dir) && 7z x ../$(bin)
	copyunityengine --no-sdk $(dir)
	u2deb prepare $(dir)

