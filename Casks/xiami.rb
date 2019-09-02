cask 'xiami' do
  version '7.5.4,32d5c7d0853b57e32e1d64af3db2e8de'
  sha256 'be516f4c7ff3028096e6d1533d1ad45f7101924ec761e9dd88a1b1f1a30c4ba6'

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
