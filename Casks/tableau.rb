cask 'tableau' do
  version '10.0.2'
  sha256 'f023ae4778ec4d3579aef1d635be1b7f4086d28ff5244c7b681d2f0791d4d451'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'

  app 'Tableau.app'
end
