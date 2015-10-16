cask :v1 => 'tabula' do
  version '1.0.1'
  sha256 '85e75f120c450bc702c01aa88a4ca9c2d227ef2906ec7020e892e0f174a7d70b'

  url "https://github.com/jazzido/tabula/releases/download/v#{version}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/jazzido/tabula/releases.atom'
  name 'Tabula'
  homepage 'http://tabula.technology/'
  license :mit

  app 'tabula/Tabula.app'
end
