cask 'the-ur-quan-masters' do
  version '0.7.0-2'
  sha256 '90898874bab6f22b4ce57fbb1ce5d98e914b8480cb4f50422dde0a93672d214d'

  url "https://downloads.sourceforge.net/sc2/uqm-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sc2/rss',
          checkpoint: 'e2b623bbe82f64c3d35679210901a52eadd4a1f5e44b6d6823800e98175d7587'
  name 'The Ur-Quan Masters'
  homepage 'http://sc2.sourceforge.net/'

  app 'The Ur-Quan Masters.app'
end
