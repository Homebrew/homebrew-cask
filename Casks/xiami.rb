cask 'xiami' do
  version '7.0.4'
  sha256 '01100e2a4e838acd2f8dec0f045a87da3003e91e12f597a60c79b1eca32c0f6f'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url 'http://gxiami.alicdn.com/xiami-desktop/update/XiamiMac-07271719.dmg'
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
