#!/bin/bash
# Get all packages in base and base-devel
pacman -Sqg base base-devel > /tmp/basepackages

# Get all installed packages (including locally installed, e.g. AUR) without depenencies
pacman -Qqe > /tmp/allpackages

# Get all explicitly installed packages without base
cat /tmp/{all,base}packages | sort | uniq -u
