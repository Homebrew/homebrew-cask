cask 'tiled' do
  version '0.18.2'
  sha256 '138d5492d202e3209481078eb9bf5e346067b42446eb5d9086a7f49bba55df13'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '8bc7a9709eee6356947b83b0e4eca59857e6700ed13bd810a510580357377e22'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
