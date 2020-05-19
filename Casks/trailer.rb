cask 'trailer' do
  version '1.6.17'
  sha256 '6c4dce7eeacb42f64a3fdc1efb8b8d8af6b46564e2beca05622fed48b37fb699'

  # github.com/ptsochantaris/trailer/ was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'

  app 'Trailer.app'

  uninstall quit: 'com.housetrip.Trailer'

  zap trash: [
               '~/Library/Application Support/com.housetrip.Trailer',
               '~/Library/Caches/com.housetrip.Trailer',
               '~/Library/Group Containers/group.Trailer',
               '~/Library/Preferences/com.housetrip.Trailer.plist',
             ]
end
