cask 'waterfox-current' do
  version '2020.05,6820.5.5'
  sha256 '80608f12658c63074e7f6067d6646dc4998584dac2302f4cac88005ae5753bc1'

  # storage-waterfox.netdna-ssl.com/ was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20Current%20#{version.before_comma}%20Setup.dmg"
  appcast 'https://www.waterfox.net/download/'
  name 'Waterfox Current'
  homepage 'https://www.waterfox.net/'

  app 'Waterfox Current.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*',
               '~/Library/Application Support/Waterfox',
               '~/Library/Caches/Waterfox',
               '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
             ]
end
