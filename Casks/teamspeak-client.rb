cask 'teamspeak-client' do
  version '3.1.1'
  sha256 '5ab5dbe2271317ec66da568aeba0348d57123153914704e97f8db7ce5a9e1be0'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
