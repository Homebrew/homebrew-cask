cask 'the-hit-list' do
  version '1.1.28,352'
  sha256 '4262813521d6b0459d4580aebc7e3d4b1b6080731888d26c45253e4587e95952'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: 'a4bc0e34599ed0ea03435c3db10011e0213d59957b4a8f8a0bdb8dab53234550'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
