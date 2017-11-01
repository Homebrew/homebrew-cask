cask 'trailer' do
  version '1.6.3'
  sha256 'b1708c9f34b6d6c944fef44dcfa0fca9373eb8fec287ef1ad888173752519f4f'

  # github.com/ptsochantaris/trailer was verified as official when first introduced to the cask
  url "https://github.com/ptsochantaris/trailer/releases/download/#{version}/trailer#{version.no_dots}.zip"
  appcast 'https://github.com/ptsochantaris/trailer/releases.atom',
          checkpoint: 'a02b4abab67026baa7fe707dbb1713f0bbf65e0f53529efe81c15a1a8117e32c'
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
