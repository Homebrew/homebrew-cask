cask :v1 => 'winebottler' do
  version '1.7.25'
  sha256 'af8f9184018b4a2f5513bd275f66f337e76ba975ac701a1295800935ac3de0c1'

  url "http://www.macupdate.com/download/33367/WineBottlerCombo_#{version}.dmg"
  homepage 'http://winebottler.kronenberg.org/'
  license :oss

  app 'WineBottler.app'
end
