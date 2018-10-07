cask 'teamspeak-client' do
  version '3.2.2'
  sha256 '07beb998f4773fef6fe5853ad47110c1bd0321b06bcd02bcf8469ffc3b3fe9e4'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
