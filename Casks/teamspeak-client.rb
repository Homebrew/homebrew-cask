cask 'teamspeak-client' do
  version '3.1.4.2'
  sha256 '2c59ff5d84811e1d3b1382bac2b0b7a511021cc11799481618c62c3dfca1a108'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
