cask 'the-unarchiver' do
  version '4.2.1,128:1586456379'
  sha256 'ae329bbdb8b180a9337a5d5a4bf1b81f29a944b134f41265b74cd25c8380cb00'

  # devmate.com/com.macpaw.site.theunarchiver/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.theunarchiver.xml'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true

  app 'The Unarchiver.app'

  zap trash: [
               '~/Library/Caches/cx.c3.theunarchiver',
               '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
               '~/Library/Preferences/cx.c3.theunarchiver.plist',
               '~/Library/Saved Application State/cx.c3.theunarchiver.savedState',
             ]
end
