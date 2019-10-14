cask 'the-unarchiver' do
  version '4.1.0,121:1549634528'
  sha256 'ff97b168f07d084e88f48e5d1e5202445596acd6eec39685d28910ee71d3a74b'

  # devmate.com/com.macpaw.site.theunarchiver was verified as official when first introduced to the cask
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
