cask 'thebrain' do
  version '10.0.26.0'
  sha256 'a205c82a3dd355b4d0239e2f7c1442851b4e549ab0b1b83fdabbe0560519cea2'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
