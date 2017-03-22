cask 'tableau-reader' do
  version '10.1.4'
  sha256 '3152809ebd7ae11a0044619f099370d1cd6a6493e54cadd7429662b4d012e521'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  app 'Tableau Reader.app'
end
