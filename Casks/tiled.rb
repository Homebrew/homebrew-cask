cask :v1 => 'tiled' do
  version '0.13.0'
  sha256 '07708d5081d811238c2178fd7fa13344961e9cfd3ee104822195e185d27fc42f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
