cask 'tableau-public' do
  version '10.3.2'
  sha256 '39a7a0fdcea8e3635ad72df43771afc95c90059c17bf6463b8ead3b9e1f32651'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
