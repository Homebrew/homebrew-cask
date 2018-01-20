cask 'teamspeak-client' do
  version '3.1.6'
  sha256 '272be452b3d9b5482878b219d983da41b4561abc892f52e000c86156fcc88641'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
