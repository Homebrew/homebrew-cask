cask 'trailer' do
  version '1.3.5'
  sha256 '906b13316d243c7791c1258f5b895a1528148808c9c3cc1e9dc7a36c50495ebe'

  # github.com/ptsochantaris/trailer was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom',
          checkpoint: '424f1cb9beeba5d92f14a256905dfe565e96e3ccc42fa7af49695f167420e5bc'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  uninstall login_item: 'Trailer',
            quit:       'com.housetrip.Trailer'

  zap trash: [
               '~/Library/Application Support/com.housetrip.Trailer',
               '~/Library/Caches/com.housetrip.Trailer',
               '~/Library/Group Containers/group.Trailer',
               '~/Library/Preferences/com.housetrip.Trailer.plist',
             ]
end
