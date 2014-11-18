#!/bin/bash

# Get unique packages
sort <(bash ./installedPackages.sh) <(bash ./definedPackages.sh) | uniq -u > /tmp/unique

join /tmp/unique <(bash ./definedPackages.sh) -a1
