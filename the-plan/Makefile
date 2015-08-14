include ../mk/include.mk

export SHORTDESCRIPTION = short atmospheric videogame
export VERSION          = 1.3
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.krillbite.com/theplan/
export YEAR             = 2013
export COPYRIGHT        = Krillbite Studio

deps           = unzip
bin            = ThePlan.zip
dir            = theplan
cleanfiles     = $(dir)
distcleanfiles = $(bin)


download:
	@ $(call download,$(bin),https://s3.amazonaws.com/theplangame/LINUX/$(bin))
	@ $(call verifysha256,$(bin),e4ec7c5cc0ccee7285ba5a46198fd32f2e9e0c234343383512965aa62633a8e1)

prepare:
	unzip $(bin) -d $(dir)
	# it doesn't start the screen selector, so there's no point in keeping these files
	rm -rf $(dir)/The\ Plan_Data/Plugins
	rm -f $(dir)/The\ Plan_Data/ScreenSelector.png
	u2deb prepare $(dir)

