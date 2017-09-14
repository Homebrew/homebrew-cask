cask 'trailer' do
  version '1.6.0'
  sha256 'f877b0e2dd5a553c9d8b28fbe2a620f6d9dad4ab0847e879ee415d4f5cc7b580'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.no_dots}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          checkpoint: '880ea5e7a776c53524c30c8bfc5fabf05efc5e4e0a812174c2caec82b0e1e66b'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  uninstall login_item: 'Trailer',
            quit:       'com.housetrip.Trailer'

  zap delete: [
                '~/Library/Caches/com.housetrip.Trailer',
                '~/Library/Group Containers/group.Trailer',
              ],
      trash:  [
                '~/Library/Application Support/com.housetrip.Trailer',
                '~/Library/Preferences/com.housetrip.Trailer.plist',
              ]
end
