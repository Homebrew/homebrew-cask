cask 'tableau-public' do
  version '2018.3.3'
  sha256 '1fcc462b091683c0b61574564cf45f6fc44d742a5d4c39fdaacd96c8b2226482'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
