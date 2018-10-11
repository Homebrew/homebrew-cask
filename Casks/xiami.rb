cask 'xiami' do
  version '7.1.6,08301006'
  sha256 '902179161124bcab9edf3a4f6e0e928010e74cbf830a7bebe561dc990ff467c1'

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
