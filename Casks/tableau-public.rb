cask 'tableau-public' do
  version '10.1.2'
  sha256 'd82c463c2edd07d4c98e62ad992d80c9be44e6cf3ce96e23e035acdc06ebe6ae'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  app 'Tableau Public.app'
end
