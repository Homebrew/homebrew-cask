cask 'veusz' do
  version '3.0'
  sha256 'de000c003099a4d9dec0b083f362bc7c23be1ff2d79897d7a61d7f1d42fb172c'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
