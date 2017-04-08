cask 'teamspeak-client' do
  version '3.1.3'
  sha256 '881d14f171411354208766ed3ab7b81f2ea8ffdb7c595f283dbb37db144dd039'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
