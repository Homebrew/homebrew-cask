cask 'tableau' do
  version '10.2.0'
  sha256 'ef8aa2045b5b1ca979daf6cefab79f34fa35d3bc07931e9b5699cd6a72f10986'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://public.tableau.com/s/'

  depends_on macos: '>= :yosemite'

  app 'Tableau.app'
end
