cask :v1 => 'the-unarchiver' do
  version '3.10'
  sha256 'fa5fd1d3ec1c293b8fa8d60f6c3f36f441eeaf1237975249f7521eace430ea22'

  url "http://unarchiver.c3.cx/downloads/TheUnarchiver#{version}.dmg"
  name 'The Unarchiver'
  homepage 'http://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
