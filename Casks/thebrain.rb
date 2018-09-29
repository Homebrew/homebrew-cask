cask 'thebrain' do
  version '9.1.15.0'
  sha256 '569199a6d3d8ca064744682b82868dfd3719dce696a918d6abe552c86e5d3c76'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
