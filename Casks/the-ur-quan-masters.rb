cask 'the-ur-quan-masters' do
  version '0.7.0-1'
  sha256 '19c313478efee8d7c51d8916b64fba4711e46b93b0c4596119dfc67d61ffa7dd'

  url "https://downloads.sourceforge.net/sc2/uqm-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sc2/rss',
          checkpoint: '74e6fb7b18dc943aadb12bf7a5859788205790bc826b3decf39893dd0d3cf70e'
  name 'The Ur-Quan Masters'
  homepage 'http://sc2.sourceforge.net/'

  app 'The Ur-Quan Masters.app'
end
