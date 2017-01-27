cask 'tableau' do
  version '10.1.4'
  sha256 '5628380273862effed8a7b58ed8d3ea5a1fd2db7ccfc7fe5c866b98d522ca87b'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://public.tableau.com/s/'

  depends_on macos: '>= :yosemite'

  app 'Tableau.app'
end
