cask 'trailer' do
  version '1.6.2'
  sha256 '939bd7f8774ce696bb2011a21887299f3a004c65956c15ea6a2f761c9390b55c'

  # github.com/ptsochantaris/trailer was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom',
          checkpoint: 'dabe111e97585b27014985752208576d2413aee1287e00a53352c98371022b98'
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
