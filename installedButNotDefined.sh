#!/bin/bash

# Get unique packages
sort <(bash ./printAllInstalledPackages.sh) <(bash ./printAllPackages.sh) | uniq -u > /tmp/unique

join /tmp/unique <(bash ./printAllPackages.sh) -a1
