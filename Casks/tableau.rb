cask 'tableau' do
  version '10.1.0'
  sha256 '2f29c64b1794030ceb33ad0c666c0334bc31add74154e1ba72b7f7d144cd6a4a'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'

  depends_on macos: '>= :yosemite'

  app 'Tableau.app'
end
