cask 'tableau-public' do
  version '2018.3.0'
  sha256 'd54362817d6d189c6a1e6424cef27ec1f24deb49e4d3d54e008eb6c90389e9f4'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
