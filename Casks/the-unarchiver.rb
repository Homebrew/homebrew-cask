cask 'the-unarchiver' do
  version '3.10.1'
  sha256 '586e4a3cc3e3da146a184bee9966134df23a4854975e0e749494f1b4b44eeee1'

  url "http://unarchiver.c3.cx/downloads/TheUnarchiver#{version}.dmg"
  name 'The Unarchiver'
  homepage 'https://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
