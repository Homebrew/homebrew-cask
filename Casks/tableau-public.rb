cask 'tableau-public' do
  version '10.1.4'
  sha256 '07393004401295ad56ae8639b42dc4bb81276d92030b13f4290abeb84bfbb59b'

  url "https://downloads.tableau.com/public/TableauPublic-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Public'
  homepage 'https://public.tableau.com/s/'

  app 'Tableau Public.app'
end
