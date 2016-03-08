cask 'twelf' do
  version '1.7.1'
  sha256 'be9e638d0c1dca17d70b06218084b6012fe74aecae09183db457c1c25f7cf3a0'

  # plparty.org is the official download host per the vendor homepage
  url "http://twelf.plparty.org/releases/twelf-osx-#{version}.dmg"
  name 'Twelf'
  homepage 'http://www.twelf.org'
  license :bsd

  app 'Twelf'
end
