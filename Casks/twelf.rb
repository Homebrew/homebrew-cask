cask :v1 => 'twelf' do
  version '1.7.1'
  sha256 'be9e638d0c1dca17d70b06218084b6012fe74aecae09183db457c1c25f7cf3a0'

  url "http://twelf.plparty.org/releases/twelf-osx-#{version}.dmg"
  homepage 'http://www.twelf.org'
  license :bsd

  app 'Twelf'
end
