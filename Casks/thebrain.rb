cask 'thebrain' do
  version '10.0.30.0'
  sha256 '573caddc8fbce25f680b51e3ebc5f83bff430d28a98ee79d8a159c6a3c7c6e07'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
