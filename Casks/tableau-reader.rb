cask 'tableau-reader' do
  version '10.3.1'
  sha256 'b77173e1da5e0534ecfe96fb14a47204f43db144f027e3eed007412e1d1b59f6'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
