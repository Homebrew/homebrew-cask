cask 'tiled' do
  version '0.18.1'
  sha256 '9e10a68320cc46137f9f8efbab161d63d9d20b998230ea25d20e48d21387494b'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'ee27a4e25a860f377a6823bfdce3b72fad3d25103513eecb445a709aa8d24e93'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
