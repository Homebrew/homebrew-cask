cask 'xiami' do
  version '7.0.2'
  sha256 '727822b0fdc7f45169e326b344e8cf1e98abccfbd86520ab3f5556c85cfd3cd1'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url 'http://gxiami.alicdn.com/xiami-desktop/update/XiamiMac-07241753.dmg'
  name 'Xiami'
  name '虾米音乐'
  homepage 'http://www.xiami.com/'

  app '虾米音乐.app'

  uninstall quit: 'com.xiami.client'

  zap trash: [
               '~/Library/Application Support/XIAMI-MUSIC',
               '~/Library/Application Support/com.xiami.client',
               '~/Library/Preferences/com.xiami.client.helper.plist',
               '~/Library/Preferences/com.xiami.client.plist',
               '~/Library/Saved Application State/com.xiami.client.savedState',
             ]
end
