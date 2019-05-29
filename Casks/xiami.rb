cask 'xiami' do
  version '7.5.2,533cc9cd574d876040c4580b0ce82eb7'
  sha256 '856ac855a59d0e12e06accde2346ec21539b90d057f9fc113f9db3f19edac8bb'

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
