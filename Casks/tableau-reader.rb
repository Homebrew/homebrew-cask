cask 'tableau-reader' do
  version '10.1.3'
  sha256 '4e6eb5fe6275c8373dcfe3d264f64cbfdd9d6736a46c73c2a50482d48632511b'

  url "https://downloads.tableau.com/tssoftware/TableauReader-#{version.dots_to_hyphens}.dmg"
  name 'Tableau Reader'
  homepage 'https://www.tableau.com/products/reader'

  app 'Tableau Reader.app'
end
