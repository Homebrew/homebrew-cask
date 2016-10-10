cask 'teamspeak-client' do
  version '3.0.19.4'
  sha256 '97eb1d74e1e6f287a907abbac5ffea373654d69f74a50ac3132c83665772e68d'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app 'TeamSpeak 3 Client.app'
end
