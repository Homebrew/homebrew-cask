cask 'turtl' do
  version '0.6.4'
  sha256 '610741dc2a6387ee29518e31524eabb2c30d6862c2348664277b020942e55547'

  url "https://turtl.it/releases/desktop/turtl-osx-#{version}.dmg"
  name 'turtl'
  homepage 'https://turtl.it/'

  app 'Turtl.app'
end
