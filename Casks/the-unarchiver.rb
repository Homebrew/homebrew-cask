cask 'the-unarchiver' do
  version '3.11.5,118:1522141689'
  sha256 '3829e2ce028f767b7cd342214594a1cbb6350144ad09cc88a638a1632348112b'

  # devmate.com/cx.c3.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/cx.c3.theunarchiver.xml',
          checkpoint: 'ec3bf702256de4ef8d1b301927794f46a97695d09b1d7a6a9f994d25f9d15ff0'
  name 'The Unarchiver'
  homepage 'https://theunarchiver.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'The Unarchiver.app'

  zap trash: [
               '~/Library/Caches/cx.c3.theunarchiver',
               '~/Library/Cookies/cx.c3.theunarchiver.binarycookies',
               '~/Library/Preferences/cx.c3.theunarchiver.plist',
               '~/Library/Saved Application State/cx.c3.theunarchiver.savedState',
             ]
end
