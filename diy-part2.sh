#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
rm -rf  feeds/luci/themes/luci-theme-argon   # 删除自带argon


git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon   # 替换新版argon
#git clone  https://github.com/r1172464137/luci-theme-edge.git package/luci-theme-edge   # 替换新版edge
