cask 'tiled' do
  version '0.18.0'
  sha256 'd3ab43da2b8de13a980a889a82d854c01ff0448778e9d3d10dbb8fa9cf116753'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'b4004dcf40e47783d5ed7629c91578988e26b402383262cade01935574599de3'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
