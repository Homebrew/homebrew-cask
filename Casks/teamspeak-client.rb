cask 'teamspeak-client' do
  version '3.1.7'
  sha256 '994dc18531fae12d740315c49a6df44e49cde2546f81989d1141174648d10422'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
