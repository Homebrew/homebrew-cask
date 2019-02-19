cask 'xiami' do
  version '7.5.0,e6f5fc55f5489bc4da7c18ffd0a86b40'
  sha256 'f344fd5dbb54cbda4de3f832b03d33c7447c3efd8971ace06d14e5f092c07b7f'

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
