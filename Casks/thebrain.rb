cask 'thebrain' do
  version '10.0.39.0'
  sha256 'dae72bfe35073572e28cb821e767fc7c967d538f38e21f5d58feb79023485747'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
