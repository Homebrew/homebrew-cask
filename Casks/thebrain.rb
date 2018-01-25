cask 'thebrain' do
  version '9.0.226.0'
  sha256 'ef11361748d357a8c506e6e4eec1085032adef1eb815f6dade3eecbbf1fd7f40'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
