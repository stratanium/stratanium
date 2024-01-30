
Debian
====================
This directory contains files used to package strataniumd/stratanium-qt
for Debian-based Linux systems. If you compile strataniumd/stratanium-qt yourself, there are some useful files here.

## stratanium: URI support ##


stratanium-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install stratanium-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your stratanium-qt binary to `/usr/bin`
and the `../../share/pixmaps/stratanium128.png` to `/usr/share/pixmaps`

stratanium-qt.protocol (KDE)

