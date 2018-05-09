cask 'transmission' do
  version '2.94'
  sha256 '2cae915ae0e37fc5983406ca7fbd53a054a7153d3bfd7a6cef117a8a28d8a78a'

  # github.com/transmission/transmission-releases was verified as official when first introduced to the cask
  url "https://github.com/transmission/transmission-releases/raw/master/Transmission-#{version}.dmg"
  appcast 'https://github.com/transmission/transmission/releases.atom',
          checkpoint: '81b72e634be104ae5cecf67fed8d55894190f9696a3ee2aaf72501caf32e8456'
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
