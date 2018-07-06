cask 'xiami' do
  version '3.1.3-0508'
  sha256 'f999b25f0ef6310f40163f856f5ffcc3ca645487ff3b3b5f3c84fdf8ed3080c8'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url "https://gxiami.alicdn.com/xiami-desktop/update/%E8%99%BE%E7%B1%B3%E9%9F%B3%E4%B9%90-#{version}.dmg"
  name 'Xiami'
  name '虾米音乐'
  homepage 'http://www.xiami.com/'

  app '虾米音乐.app'

  uninstall quit: 'com.xiami.client'

  zap trash: [
               '~/Library/Application Support/XIAMI-MUSIC',
               '~/Library/Preferences/com.xiami.client.helper.plist',
               '~/Library/Preferences/com.xiami.client.plist',
               '~/Library/Saved Application State/com.xiami.client.savedState',
             ]
end
