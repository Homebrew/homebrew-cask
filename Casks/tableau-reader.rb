cask 'tableau-reader' do
  version '10.4.0'
  sha256 '914b025babacc8638d7959675686e1287f0264614579e7dec9cca9c24ff2e6dd'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
