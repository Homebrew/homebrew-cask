cask :v1 => 'winebottler' do
  version '1.7.32
  sha256 '7e76b40a335ae7fa85903a7c0def2ea18fcde6458455e156450b813ddfb33c41'

  url 'http://winebottler.kronenberg.org/combo/builds/WineBottlerCombo_1.7.32.dmg'
  name 'WineBottler'
  homepage 'http://winebottler.kronenberg.org/'
  license :unknown

  app 'WineBottler.app'
  app 'Wine.app' 
end
