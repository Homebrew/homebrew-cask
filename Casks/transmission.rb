cask 'transmission' do
  version '2.93'
  sha256 '61cd9b74cc542458fe2e41be6ac76d8b4201a94293bf681f8d75e12e64bd8d95'

  # github.com/transmission/transmission-releases was verified as official when first introduced to the cask
  url "https://github.com/transmission/transmission-releases/raw/master/Transmission-#{version}.dmg"
  appcast 'https://github.com/transmission/transmission/releases.atom',
          checkpoint: '9cbb6259a2b36d7352456015375c5b1f30f3fc5219a92b4773972ed4e278a41e'
  name 'Transmission'
  homepage 'https://transmissionbt.com/'

  auto_updates true
  conflicts_with cask: 'transmission-nightly'

  app 'Transmission.app'

  zap trash: [
               '~/Library/Application Support/Transmission',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help',
               '~/Library/Caches/org.m0k.transmission',
               '~/Library/Cookies/org.m0k.transmission.binarycookies',
               '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
               '~/Library/Preferences/org.m0k.transmission.plist',
               '~/Library/Saved Application State/org.m0k.transmission.savedState',
             ]
end
