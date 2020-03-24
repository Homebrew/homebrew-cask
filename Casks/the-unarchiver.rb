cask 'the-unarchiver' do
  version '4.2.0,126:1583396227'
  sha256 '1fdd1d95561988883fae7909d99ba8c0c3c8ada9531ac8f21ce4e493f4f886a3'

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
