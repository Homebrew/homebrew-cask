cask 'the-ur-quan-masters' do
  version '0.7.0-2'
  sha256 '90898874bab6f22b4ce57fbb1ce5d98e914b8480cb4f50422dde0a93672d214d'

  url "https://downloads.sourceforge.net/sc2/uqm-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sc2/rss'
  name 'The Ur-Quan Masters'
  homepage 'http://sc2.sourceforge.net/'

  app 'The Ur-Quan Masters.app'
end
