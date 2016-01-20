cask 'tabula' do
  version '1.0.1'
  sha256 '85e75f120c450bc702c01aa88a4ca9c2d227ef2906ec7020e892e0f174a7d70b'

  url "https://github.com/jazzido/tabula/releases/download/v#{version}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/jazzido/tabula/releases.atom',
          checkpoint: '7f31dc12d85d261d05d3b57f1e432f24a3d8dacc0986f16e266db6cd4941a57d'
  name 'Tabula'
  homepage 'http://tabula.technology/'
  license :mit

  app 'tabula/Tabula.app'
end
