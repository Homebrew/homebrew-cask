cask 'tableau-reader' do
  version '2018.2.0'
  sha256 'e8c8b782e6c280259b5c557ab82c8c437546bc4335fedf59e90dce0d3286b8e4'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
