# This line will include some general targets and functions we need.
include ../mk/include.mk


# Then we need to export some packaging information, so that the u2deb shell
# script we use can make use these.

# The original name of the game, including special chars and spaces.
export UPSTREAMNAME     = My Super Awesome Action Game!!!

# Specify a name for the executable and the package (lower-case, no spaces, etc.).
export FILENAME         = awesome-action-game

# A brief game description for the package and menu entry,
# mustn't exceed 80 characters, mustn't start with an article.
export SHORTDESCRIPTION = awesome and new game created by myself

# The game's upstream version.
# Don't use underlines, spaces or special chars, first character must be a number.
# Use the release date (i.e. 2013.05) or "1.0" if you're unsure.
export VERSION          = 1.0.2

# The package maintainer.
# Make sure to use the following pattern: Firstname Lastname <email@domain.com>
# Just enter John Doe <nick@domain.org> if you don't want to enter a real name
# and address.
export MAINTAINER       = Marshall Banana <djcj@gmx.de>

# Homepage of the game or the developer.
export HOMEPAGE         = http://www.super-awesome.games

# The year when the game was released.
export YEAR             = 2013

# Who's holding the copyright?
# Just enter the game's homepage or "the game developers" if you're unsure.
export RIGHTHOLDER      = the developers and contributors of "My Super Awesome Action Game!!!"



# Enter any additional dependencies that we need.
# Usually that would be unzip or unrar for archive extraction.
# The packages debhelper, u2deb and wget are already listed in "../mk/include.mk".
deps           = unzip

# Not required, but you probably don't want to copy and paste the same
# file or directory names numerous times.
bin            = MySuperAwesomeActionGame_Linux.zip
dir            = MySuperAwesomeActionGame_Linux_v1.0.2

# Everything that should be deleted with a 'make clean' command (i.e. the extracted game folder).
cleanfiles     = $(dir)

# Everything that should be deleted with 'make distclean'.
# You should add the downloaded archive's name here and not to cleanfiles if
# you don't want to re-download it whenever you run 'make clean'.
distcleanfiles = $(bin)



# The Makefile target to download the game.
download:
	# Check if the archive exists, otherwise download it.
	test -f $(bin) || wget "http://www.super-awesome.games/download/$(bin)"

	# Verify the sha256 checksum to check the file's integrity.
	# The sha256 checkum can be obtained with "sha256sum FILENAME".
	# Usage is: @ $(call verifysha256,FILENAME,SHA256SUM)
	# You don't need to add this if you don't want to, but it's recommended.
	@ $(call verifysha256,$(bin),5b074dc815508d5e2552d488479c0abf157de8d5b92a4f36f05a706577122ec0)

# The preparation phase before the actual package is build.
# This will include archive extraction and running the u2deb prepare command.
# But you can add other tasks too if they're required.
prepare:
	# Extract the archive.
	# Check the manpages of unzip, unrar or tar for more details.
	unzip $(bin)

	# If the game starts with a configuration panel and this panel is missing the game's logo,
	# you can copy a logo with the filename ScreenSelector.png into the GAMENAME_Data subdirectory.
	# If you can't find a good logo, just copy the 1x1 pixels dummy image from "../mk".
	cp ../mk/ScreenSelector.png "$(dir)/My Super Awesome Action Game_Data/"

	# Run the prepare phase of u2deb.
	# See 'man u2deb' or 'u2deb --help' for more information about the commands.
	u2deb prepare $(dir)
