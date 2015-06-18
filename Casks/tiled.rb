cask :v1 => 'tiled' do
  version '0.12.3'
  sha256 'd3d932c693f484f3817dbf90c6d67ffd913f4c1bd293af1c9457547568a54051'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
