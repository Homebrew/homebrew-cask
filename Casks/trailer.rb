cask 'trailer' do
  version '1.6.8'
  sha256 'ecd79c9a0b8f26a19a3048908c13ff6630e016dfd866709607e29e8c4b6ca644'

  # github.com/ptsochantaris/trailer was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom'
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
