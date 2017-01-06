cask 'tableau' do
  version '10.1.3'
  sha256 'c1d049d1271c20fd9a66140e27ce24da3efa4d5a0a8034851e8be13fae2516cd'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://public.tableau.com/s/'

  depends_on macos: '>= :yosemite'

  app 'Tableau.app'
end
