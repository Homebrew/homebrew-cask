cask 'turtl' do
  version :latest
  sha256 :no_check

  url 'https://turtl.it/releases/desktop/turtl-osx-0.6.4.dmg'
  name 'turtl'
  homepage 'https://turtl.it/'
  license :oss

  app 'Turtl.app'
end
