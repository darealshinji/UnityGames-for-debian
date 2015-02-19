include ../mk/include.mk

export SHORTDESCRIPTION = short atmospheric videogame
export VERSION          = 1.3
export MAINTAINER       = Marshall Banana <djcj@gmx.de>
export HOMEPAGE         = http://www.krillbite.com/theplan/
export YEAR             = 2013
export RIGHTHOLDER      = Krillbite Studio

deps           = unzip
bin            = ThePlan.zip
cleanfiles     = theplan
distcleanfiles = $(bin)


download:
	test -f $(bin) || wget "https://s3.amazonaws.com/theplangame/LINUX/$(bin)"
	@ $(call verifysha256,$(bin),e4ec7c5cc0ccee7285ba5a46198fd32f2e9e0c234343383512965aa62633a8e1)

prepare:
	unzip $(bin) -d theplan
	# it doesn't start the screen selector, so there's no point in keeping these files
	rm -rf "theplan/The Plan_Data/Plugins" "theplan/The Plan_Data/ScreenSelector.png"
	u2deb prepare theplan

