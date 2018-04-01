cask 'tableau-reader' do
  version '10.5.0'
  sha256 '4d616d907ddc5c1f10c9125557907ae0c512c34ad7a2a53ea22f568f173a0f7d'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
