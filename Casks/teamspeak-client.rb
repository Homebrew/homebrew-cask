cask 'teamspeak-client' do
  version '3.1.0.1'
  sha256 '60733a27b2daa849bcf5c24095e664183c3c66cef85ac5ab26c3cc740805b393'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
