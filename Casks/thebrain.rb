cask 'thebrain' do
  version '10.0.31.0'
  sha256 '0d9ed8c2b173d6b63e3f7ada5cbedbce65ea1a184bed8e6723dd90e7d153a8ee'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
