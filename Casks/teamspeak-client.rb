cask 'teamspeak-client' do
  version '3.1.10'
  sha256 'a8c38b3dd886e8cfd4875220387b3cd19bde1376604b180032d8f3955e154d17'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
