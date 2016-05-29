include ../mk/include.mk

export UPSTREAMNAME     = Lurking
export PKGNAME          = lurking
export SHORTDESCRIPTION = sound-based survival thriller
export VERSION          = 1.0
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = https://www.lurking-game.com/
export YEAR             = 2014
export COPYRIGHT        = Digipen Institute of Technology Singapore

deps           = innoextract unzip
cleanfiles     = app $(exe) $(icon) $(selector) __MACOSX
distcleanfiles = $(zip)

exe          = Lurking_setup.exe
zip          = $(exe).zip
zip_sum      = f6cd53ce804a3a235b7964641d0afb07e6101ae153bf91f2dae557d912d6d655
zip_url      = https://www.lurking-game.com/$(zip)
icon         = lurking.png
icon_sum     = 481d1807d18e310a2953cbf70dfb779928ac1c2bc8f3631e62ad12cffc4c340a
icon_url     = http://fs5.directupload.net/images/160529/gtciypww.png
selector     = ScreenSelector.png
selector_sum = 0c421fa7dd5727f753bd5a03ddd5cee4368c0b4f282b20d33802f01cfd900981
selector_url = http://fs5.directupload.net/images/160529/kg9xjh3f.png


download:
	@ $(call download,$(zip),$(zip_url))
	@ $(call download,$(icon),$(icon_url))
	@ $(call download,$(selector),$(selector_url))
	@ $(call verifysha256,$(zip),$(zip_sum))
	@ $(call verifysha256,$(icon),$(icon_sum))
	@ $(call verifysha256,$(selector),$(selector_sum))

prepare:
	unzip $(zip)
	rm -rf __MACOSX
	innoextract $(exe)
	copyunityengine --no-sdk app
	rm -f app/lurkingicon.ico
	cp $(selector) app/Lurking_Data
	u2deb prepare app --icon=$(icon)

