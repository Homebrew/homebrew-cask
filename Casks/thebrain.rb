cask 'thebrain' do
  version '10.0.41.0'
  sha256 '99996177b9683e5276c88af87bb6fa9e99d2d81b9cedeae050c6860e09f12db6'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
