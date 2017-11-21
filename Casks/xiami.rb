cask 'xiami' do
  version '3.0.10-9e6'
  sha256 'dded5b66993604646468ca74d1a4da7d1b1995009670d4aef4bd8931113b6db4'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url "http://gxiami.alicdn.com/xiami-desktop/update/%E8%99%BE%E7%B1%B3%E9%9F%B3%E4%B9%90-#{version}.dmg"
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
