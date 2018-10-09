cask 'thebrain' do
  version '9.1.18.0'
  sha256 '05bc47b98d230ac790fc622a5b18a23b72d8873ec752cb5bc437e81ab47c8d5b'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
