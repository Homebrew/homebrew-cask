cask 'tableau-public' do
  version '10.0.2'
  sha256 '014f88465525e0315c70b7bee04913f29d9c6ca086abd50f09236930de9e34cd'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/'

  app 'Tableau Public.app'
end
