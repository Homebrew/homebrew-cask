cask 'tabula' do
  version '1.0.1'
  sha256 '85e75f120c450bc702c01aa88a4ca9c2d227ef2906ec7020e892e0f174a7d70b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/tabulapdf/tabula/releases/download/v#{version}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/tabulapdf/tabula/releases.atom',
          checkpoint: '2e20dc186a93930ca4b59fe694ba278c4171776a19c6942273d1b6510d05755d'
  name 'Tabula'
  homepage 'http://tabula.technology/'
  license :mit

  app 'tabula/Tabula.app'
end
