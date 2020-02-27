cask 'waterfox-current' do
  version '2020.02,6820.2.12'
  sha256 '2c78b718c1cbc557ec142c74f1749f2e13096c7513052c930e6f5c33be0e5b21'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
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
