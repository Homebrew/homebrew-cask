cask 'transmission' do
  version '2.92'
  sha256 '926a878cac007e591cfcea987048abc0689d77e7729a28255b9ea7b73f22d693'

  # github.com/transmission/transmission was verified as official when first introduced to the cask
  url "https://github.com/transmission/transmission/releases/download/#{version}/transmission-#{version}.dmg"
  appcast 'https://github.com/transmission/transmission/releases.atom',
          checkpoint: '4b7b7fdacce37340016d52fb86696f07e9ce6baf3fd7ebb75901fe0feecb5752'
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
