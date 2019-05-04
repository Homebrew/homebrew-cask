cask 'teamspeak-client' do
  version '3.2.5'
  sha256 '6b2bd20a0cb16e1b634a32e19768f1c9045726c2db9a02e98ec4f6808f6c7e3f'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
