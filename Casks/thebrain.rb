cask 'thebrain' do
  version '10.0.32.0'
  sha256 '67b3ff05a50fa92f9ad37363d0206a02f9dd3436297514788411dc49312e8297'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
