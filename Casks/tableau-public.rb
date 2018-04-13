cask 'tableau-public' do
  version '10.5.3'
  sha256 '11fa3adb0dc01ef01e8d56fc7c82358b914594ff4f83ac6f0e3af50367f7e852'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
