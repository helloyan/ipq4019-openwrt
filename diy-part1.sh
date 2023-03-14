#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# apply patch
wget https://raw.githubusercontent.com/helloyan/ipq4019-openwrt/main/r619ac.patch
git apply r619ac.patch

# Add a feed source
#echo 'src-git dmzk https://github.com/helloyan/dmzk' >>feeds.conf.default
cd package
git clone --recursive https://github.com/helloyan/dmzk.git