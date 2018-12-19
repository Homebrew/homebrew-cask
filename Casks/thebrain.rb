cask 'thebrain' do
  version '10.0.29.0'
  sha256 '87dbb9edf60a45246704d0573174126fa72203853dd00c2ecc05e56e01e8abf0'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
