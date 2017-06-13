cask 'tiled' do
  version '1.0.0'
  sha256 '0607713d702b662f430a2aaf7305203db8f5d2c9620a708d3ca73a5c3c742047'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'fbfb63f98888678531f5b6ab4206b666bdcac546a27653af66db778664f8f8a6'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
