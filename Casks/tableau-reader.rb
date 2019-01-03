cask 'tableau-reader' do
  version '2018.3.2'
  sha256 'ad9aff45442af40f4c89b23822ffe74b1c08649efce8fa41dd0409524a0c540f'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
