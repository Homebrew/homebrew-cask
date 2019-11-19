cask 'xiami' do
  version '7.5.6,dd3237c0a4dd99385ddbc853f23c5fd8'
  sha256 '6a5576f2c53d42a1c61f1ddc9503486d039aa6ed0388246ea53aec9b32a8338c'

  url "https://files.xiami.com/webh5/files/xiamiMac/#{version.after_comma}.xiamimac#{version.before_comma.dots_to_hyphens}.zip"
  appcast 'https://g.alicdn.com/music/desktop-app/XiamiMac.xml'
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
