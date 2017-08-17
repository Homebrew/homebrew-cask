cask 'waterfox' do
  version '55.0.1'
  sha256 '5a487f253a02e012fc6d1dbf2e148996cf66dffff7c943c3f84fca390076334d'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl',
                '~/Library/Caches/Waterfox',
              ],
      trash:  [
                '~/Library/Application Support/Waterfox',
                '~/Library/Preferences/org.waterfoxproject.waterfox.plist',
              ]
end
