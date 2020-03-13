cask 'waterfox-current' do
  version '2020.03,6820.3.11'
  sha256 '72361e1f3ec8f3b403b7508cb9b392533a196e04a926bc011b2e824bd7a9c554'

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
