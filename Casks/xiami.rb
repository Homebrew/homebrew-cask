cask 'xiami' do
  version '7.5.7,725505ae6e1c3d671abfb85dcdde5c4c'
  sha256 'e50858a5e5a8c0c02818e7b474b020b95fb05b696c6e60dcad6b1cc40d1488e1'

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
