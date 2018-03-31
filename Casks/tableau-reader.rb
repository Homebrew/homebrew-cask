cask 'tableau-reader' do
  version '10.5.2'
  sha256 '4deb7517be009db3022b59bb5767a79a471e62bfa99fb5e3e834f284ad7fb8ee'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
