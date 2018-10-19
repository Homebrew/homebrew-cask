cask 'xiami' do
  version '7.2.0,10161733'
  sha256 'ef5a09acef0532da035eddc8f27327e50a9b507fe14143eaba5f3e22028acf44'

  # gxiami.alicdn.com/xiami-desktop was verified as official when first introduced to the cask
  url "https://gxiami.alicdn.com/xiami-desktop/update/XiamiMac-#{version.after_comma}.dmg"
  name 'Xiami'
  name '虾米音乐'
  homepage 'https://www.xiami.com/'

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
