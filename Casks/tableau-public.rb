cask 'tableau-public' do
  version '2018.3.1'
  sha256 '9eb9015d414fcf6465185cac1012656c945fcf1c2ff0f85cbb5ba1ce7cd7db25'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
