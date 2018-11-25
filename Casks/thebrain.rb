cask 'thebrain' do
  version '10.0.27.0'
  sha256 '0e32f53b3db4d9ad9356e01f3c8c5ad69e25b2abbd71409a66a2e1757b1c5382'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
