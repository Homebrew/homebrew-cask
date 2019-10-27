cask 'tableau-reader' do
  version '2019.3.1'
  sha256 '819607b450387fe2f1307e3ffdc1f2d178044c2d5c4e21f5c9c6d8dba8b5a75a'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/reader/mac',
          configuration: version.dots_to_hyphens
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  pkg 'Tableau Reader.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Reader.app',
                     ]
end
