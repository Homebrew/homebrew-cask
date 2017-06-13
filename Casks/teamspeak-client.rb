cask 'teamspeak-client' do
  version '3.1.4'
  sha256 'f652eb0850a76dd0ca1df89e93045c6ac34cd79359b46ce76789f6bfa365d96e'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
