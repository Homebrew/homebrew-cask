cask :v1 => 'tiled' do
  version '0.13.1'
  sha256 'cab94143b4fc0541b98491cbe160ee39164804d0bce3264bf6734c9275f16407'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
