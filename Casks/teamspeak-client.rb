cask 'teamspeak-client' do
  version '3.1.2'
  sha256 '56e834e6eac5a700790d7611b8fe782d146b1a75ad802cc7d2ccc1d871165fab'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
