cask 'waterfox' do
  version '55.0.2'
  sha256 'd286f88b4d9dc3ebb6bc374a88408309b68eaba7c8b4066e5ae3698b7004eaba'

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
