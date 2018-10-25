cask 'tableau-reader' do
  version '2018.2.3'
  sha256 'b0acf6084c696bf4247505ffaa0feb2a986ec560f1fdc182d7850971c7543911'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
