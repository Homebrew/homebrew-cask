cask 'xiami' do
  version '3.0.9-0A5FCD0'
  sha256 '82e6d417da739211c0b70ea0f770754807d4f86837e1055bc7569794d3e3853b'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url "http://gxiami.alicdn.com/xiami-desktop/update/%E8%99%BE%E7%B1%B3%E9%9F%B3%E4%B9%90-#{version}.dmg"
  name 'Xiami'
  name '虾米音乐'
  homepage 'http://www.xiami.com/'

  app '虾米音乐.app'

  uninstall quit: 'com.xiami.client'

  zap delete: [
                '~/Library/Application Support/XIAMI-MUSIC',
                '~/Library/Preferences/com.xiami.client.helper.plist',
                '~/Library/Preferences/com.xiami.client.plist',
                '~/Library/Saved Application State/com.xiami.client.savedState',
              ]
end
