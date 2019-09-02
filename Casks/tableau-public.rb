cask 'tableau-public' do
  version '2019.2.3'
  sha256 'bff8c4214c62fa227faa6542f69070b20a91af6a4e30a1deeaf0f78fb2f60fe5'

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
