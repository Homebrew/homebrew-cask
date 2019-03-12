cask 'thebrain' do
  version '10.0.36.0'
  sha256 '87c7103d5cb3faae3640ae5573d68c389bb5c35f48efcc5cc527300fecba9a62'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
