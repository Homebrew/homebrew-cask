cask :v1 => 'tiled' do
  version '0.14.0'
  sha256 '3bb3531dc58e2a9e62a346ce3438d30d7e96f0aa043bbe34577fbe8c46c2aec9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
