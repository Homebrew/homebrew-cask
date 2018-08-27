cask 'teamspeak-client' do
  version '3.2.1'
  sha256 '04a53228267a9cdcb8f359355cd3ab109b6dd3157e7df4c77116adc5610903ce'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
