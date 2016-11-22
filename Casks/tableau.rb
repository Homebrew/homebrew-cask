cask 'tableau' do
  version '10.1.1'
  sha256 'bddcd021ff2e6b43415d8645bfc728c25f37887e685255a795e5942c62ddf36a'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'

  depends_on macos: '>= :yosemite'

  app 'Tableau.app'
end
