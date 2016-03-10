cask 'tableau' do
  version '9.2.6'
  sha256 '0b633f6af181901968666d9f4f46016099cb1302f2e11db78c301c7d1b893cf7'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'
  license :commercial

  app 'Tableau.app'
end
