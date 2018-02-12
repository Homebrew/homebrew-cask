cask 'trailer' do
  version '1.6.6'
  sha256 'f27222465372473980ed609a056cb955867f04464e63b78837f7e6e9632c2dc3'

  # github.com/ptsochantaris/trailer was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom',
          checkpoint: '65f0b39c3c645d14d16a5f4ec431f4ea11b6e1a30010a23a2e0f8d734f6e494b'
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
