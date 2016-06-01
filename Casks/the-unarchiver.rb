cask 'the-unarchiver' do
  version '3.11.1'
  sha256 '2b9e1c0f6bcad958c19bfa0b5b1c59ad0681574100918004c0bcad2e43dc0761'

  url "https://unarchiver.c3.cx/downloads/TheUnarchiver#{version}.dmg"
  name 'The Unarchiver'
  homepage 'https://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
