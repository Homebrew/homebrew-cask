cask 'waterfox' do
  version '55.1.0'
  sha256 '8d3d266c317f91552db67d1cb5894cd43207a6a99336c85d3fc6e69a10be97bf'

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
