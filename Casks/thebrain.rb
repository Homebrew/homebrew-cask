cask 'thebrain' do
  version '9.0.264.0'
  sha256 'bec17f4428eb1509d79c0510fcc7a2f88c3acf3d5b121ff6b406c6bdc9005f5c'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
