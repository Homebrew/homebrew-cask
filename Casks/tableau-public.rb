cask 'tableau-public' do
  version '2020.1.2'
  sha256 '9b5780df4f52fefb447722f7a22e80b05cfbfd3f77cc57954c09d7f48b96dcff'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.tableau.com/downloads/public/mac',
          configuration: version.dots_to_hyphens
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
