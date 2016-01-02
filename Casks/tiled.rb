cask 'tiled' do
  version '0.14.2'
  sha256 'ee8c7f3bba284d3fe5fa89cfe313f60bdd20e1386f08ed2649b60cb9159d268a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          :sha256 => 'a6f5a971aa5e634e3be29412e21ca605296cda41065591c2c2e47417e45511d3'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
