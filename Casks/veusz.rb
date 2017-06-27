cask 'veusz' do
  version '1.26.1'
  sha256 '429c5c7d54786f891627afc6dee081ef5c3b1729326d52be51dc5f8751b87179'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom',
          checkpoint: '5d9d82696b1f7ee4c09aed03db7a6b4e72752bbfb2bf02db9a1c2ed57d22d030'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
