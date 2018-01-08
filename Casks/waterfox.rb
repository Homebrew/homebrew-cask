cask 'waterfox' do
  version '56.0.2'
  sha256 '1cc5688198cb5c57c422cb1063d0a66aa614cc57d3abfca1faf5bb6e667317b2'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
