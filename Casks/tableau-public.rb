cask 'tableau-public' do
  version '9.3.0'
  sha256 '73f82fb7eac3f99a52ed53f48457b031db2d38b9cf1a30462dffa655a4618012'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tableau Public.app'
end
