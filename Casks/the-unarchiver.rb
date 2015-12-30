cask 'the-unarchiver' do
  version '3.10.1'
  sha256 '945570d11c40592fecf98461e224928afe594fd2d178c8bd81b1f880fd616770'

  url "http://unarchiver.c3.cx/downloads/TheUnarchiver#{version}.dmg"
  name 'The Unarchiver'
  homepage 'https://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
