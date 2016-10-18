cask 'tableau' do
  version '10.0.1'
  sha256 '7b065f21b147ec9fc432cc202a503f9a2614ae36cedfb36f18382be58d3d6971'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'

  app 'Tableau.app'
end
