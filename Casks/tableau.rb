cask 'tableau' do
  version '9.3.0'
  sha256 '31fd81dd67862a16dfdbc2cad53182e848d85987e74bea694a361f847a321725'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'
  license :commercial

  app 'Tableau.app'
end
