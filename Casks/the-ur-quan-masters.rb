cask 'the-ur-quan-masters' do
  version '0.7.0-1'
  sha256 '19c313478efee8d7c51d8916b64fba4711e46b93b0c4596119dfc67d61ffa7dd'

  url "https://downloads.sourceforge.net/sc2/uqm-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/sc2/rss',
          checkpoint: '3e25028c41088bc692420d9b64a8e11c0b32cba57beeb4a5fadfebbb10b63415'
  name 'The Ur-Quan Masters'
  homepage 'http://sc2.sourceforge.net/'

  app 'The Ur-Quan Masters.app'
end
