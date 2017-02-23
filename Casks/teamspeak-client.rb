cask 'teamspeak-client' do
  version '3.1.1.1'
  sha256 '0aa946088f8415131b5ccde9a7fd7f49f94a4a7c56ccc7786c23177b1c213597'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
