cask 'tableau-public' do
  version '2018.1.3'
  sha256 '225301ec83764a2cbcb951c5048884f1ef4a7c3c3a24bdfb812555ea91b28dbc'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
