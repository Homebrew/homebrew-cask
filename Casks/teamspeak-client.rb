cask 'teamspeak-client' do
  version '3.1.8'
  sha256 'ea57e3d5174b35a69eafc6e5ae3bbb65049a0952d00eb766b66db7ac50345f51'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
