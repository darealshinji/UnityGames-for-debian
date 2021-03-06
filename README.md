#### Create Debian packages of Unity engine games

This repository contains informations about a small selection of games that were built on
the Unity engine and exported to GNU/Linux.
You can use the Makefiles in the directories to automatically download a game and build a Debian package
(it's a bit like the AUR from Arch Linux).
This isn't intended to be a complete collection, it's more like an example on how to build packages from
any Unity engine game. However I will add games whenever I find something interresting.
The directory 'example' contains example files with detailed explanatory commentaries.

This requires the command line tool [u2deb](https://github.com/darealshinji/UnityEngine2deb) as well as the following packages:
`debhelper imagemagick execstack`

To resolve all package dependencies you should also install `libgtk2.0-0 libgtk2.0-0:i386 libglu1-mesa libglu1-mesa:i386`

You can use the provided shell script to build a Debian package of u2deb.
u2deb's package will also resolve all the required dependencies.


**Important:**

I always test the packages here before I push a new commit (I'm using Ubuntu).
But I can never guarantee if a game's download resource will disappear or not.
You should also keep in mind that closed-source software, especially if it hasn't been updated for ages, and
programs that use certain embedded libraries are considered a potential security risk in Debian-based distributions.
