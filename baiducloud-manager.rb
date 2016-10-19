cask 'baiducloud-manager' do
  version '2.0.0'
  sha256 :no_check

  url 'http://issuecdn.baidupcs.com/issue/netdisk/MACguanjia/BaiduNetdisk_mac_2.0.0.dmg'
  name '百度网盘'
  homepage 'http://pan.baidu.com/download#pan'

  app 'BaiduNetdisk_mac.app'
end
