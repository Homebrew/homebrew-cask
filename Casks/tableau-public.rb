cask 'tableau-public' do
  version '10.4.1'
  sha256 'a3aa1c0c61659bb39ff9ca57775841e389e977954b7e60c3e28665b9e30cabcd'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
