cask 'teamspeak-client' do
  version '3.1.9'
  sha256 'cfc09891326322b983dd364ff9233fb2d2cfa2daa2f78050ac08459dd6a91c94'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  app "TeamSpeak #{version.major} Client.app"
end
