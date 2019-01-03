cask 'waterfox' do
  version '56.2.6'
  sha256 '8d6beb321c36f1cfbcb1afd2247357bb9cab51bc5c55350cc79a2f01659501b0'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/en-US/'

  app 'Waterfox.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
