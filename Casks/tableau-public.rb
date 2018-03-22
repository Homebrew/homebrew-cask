cask 'tableau-public' do
  version '10.5.2'
  sha256 '55da0712ba595564517c87a17ae49d1ad2129dfa9f70630002fb2ccf0451dd57'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
