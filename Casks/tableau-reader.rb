cask 'tableau-reader' do
  version '2018.3.1'
  sha256 '8d5feeb9a24a3751145d6cd621d364d520f16e9ee5632cfcea6a10c34c7abf5a'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
