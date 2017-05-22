cask 'tableau-public' do
  version '10.2.2'
  sha256 'd904c74fce94ad74bab772e238506ff092adff9eb545f04359942886df9e2dae'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  app 'Tableau Public.pkg'
end
