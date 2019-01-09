cask 'tableau-public' do
  version '2018.3.2'
  sha256 'ac352804f8b03366faafe785053943a2f57a4590beb82e3b659b828a0f396cd0'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  pkg 'Tableau Public.pkg'

  uninstall pkgutil: [
                       'com.tableausoftware.FLEXNet.*',
                       'com.tableausoftware.Public.app',
                     ]
end
