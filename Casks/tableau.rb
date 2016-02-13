cask 'tableau' do
  version '9.2.4'
  sha256 'f8f893f6dec4bd7c20105655d6dc787c0fe8b10676fb40345ae807ef01a892d6'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'
  license :commercial

  app 'Tableau.app'
end
