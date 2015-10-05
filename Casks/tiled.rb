cask :v1 => 'tiled' do
  version '0.14.1'
  sha256 'f554f0d35c63b55483f0eea13f45e3c98deed59e3cf9c9e201e0599d909929ff'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
