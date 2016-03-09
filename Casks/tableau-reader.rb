cask 'tableau-reader' do
  version :latest
  sha256 :no_check

  url 'https://downloads.tableau.com/tssoftware/TableauReader.dmg'
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'
  license :gratis

  app 'Tableau Reader.app'
end
