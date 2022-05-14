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

# Add a feed source
sed -i '$a src-git small https://github.com/kenzok8/small-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git openclash https://github.com/vernesong/OpenClash' feeds.conf.default

# Add luci-theme-argon
# rm -rf lede/package/lean/luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git
rm -rf package/lean/luci-theme-argon/
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone -b master https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

#添加额外软件包
git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
# git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
