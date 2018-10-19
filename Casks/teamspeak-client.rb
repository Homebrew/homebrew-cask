cask 'teamspeak-client' do
  version '3.2.3'
  sha256 'a689ffbd54b14c1a3edf887731cb6b24676ea6d90249cabd7f6e378e1642dafe'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
