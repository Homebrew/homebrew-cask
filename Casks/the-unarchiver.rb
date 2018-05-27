cask 'the-unarchiver' do
  version '3.11.6,119:1527191272'
  sha256 '78becd148d5f3cd9a1570751786f364399062b43f576e5a78d9aec3b9450b942'

  # devmate.com/com.macpaw.site.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.theunarchiver.xml',
          checkpoint: '0179cd684e073cdc32de47a7d653059e8ede3ff69abfd7140393012c7a5543f4'
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
