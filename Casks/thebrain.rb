cask 'thebrain' do
  version '10.0.44.0'
  sha256 'db38aedd419baabb33bb94a76c4ab0a6ab2bd20f8161f12ef8d402d4b5dfd134'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
