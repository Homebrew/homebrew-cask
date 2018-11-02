cask 'thebrain' do
  version '10.0.25.0'
  sha256 'ace5903dc7e2f5a3a58128d9b8ce953714d715f2f50aa89d1f48f922535a2a4f'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
