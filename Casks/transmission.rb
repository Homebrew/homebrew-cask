cask 'transmission' do
  version '2.92'
  sha256 '926a878cac007e591cfcea987048abc0689d77e7729a28255b9ea7b73f22d693'

  # github.com/transmission/transmission was verified as official when first introduced to the cask
  url "https://github.com/transmission/transmission/releases/download/#{version}/transmission-#{version}.dmg"
  appcast 'https://github.com/transmission/transmission/releases.atom',
          checkpoint: '97d7eb25ba4b293ec0948784d0b73c45483a2daa9cd00fcd5e80a9b56107ffc1'
  name 'Transmission'
  homepage 'https://www.transmissionbt.com/'

  auto_updates true

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl',
                '~/Library/Application Support/Transmission',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Cookies/org.m0k.transmission.binarycookies',
                '~/Library/Preferences/org.m0k.transmission.plist',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
              ]
end
