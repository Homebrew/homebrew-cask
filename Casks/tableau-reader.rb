cask 'tableau-reader' do
  version '2018.1.3'
  sha256 'fab16ff4e44f96835c7c6d96020f5010c191dfd480582ecbcf04e52e7bada2b6'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
