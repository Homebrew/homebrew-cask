cask 'tableau-public' do
  version '10.1.0'
  sha256 '3baf670271eb44ae376cd0e91c21baac28e1096dcfbcb2b6de6a9f376403ecac'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  app 'Tableau Public.app'
end
