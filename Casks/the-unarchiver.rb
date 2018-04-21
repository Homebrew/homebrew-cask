cask 'the-unarchiver' do
  version '3.11.5,118:1522167978'
  sha256 'a47caf8f693d17a9abe84f0f67b8f0114aabe5810da98cadd32492b6c70e8869'

  # devmate.com/cx.c3.theunarchiver was verified as official when first introduced to the cask
  url "https://dl.devmate.com/cx.c3.theunarchiver/#{version.after_comma.before_colon}/#{version.after_colon}/TheUnarchiver-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/cx.c3.theunarchiver.xml',
          checkpoint: '6cb4ff82283c387d7efc18404a6f406003798e4342d93397526bf1f57cabb106'
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
