cask 'teamspeak-client' do
  version '3.0.19.3'
  sha256 'ed95f3c6917fb0579f210d66182c1f3c80a928dcfd832241796e2ad9fb261497'

  # dl.4players.de/ts was verified as official when first introduced to the cask
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeamSpeak 3 Client.app'
end
