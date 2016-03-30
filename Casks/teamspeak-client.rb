cask 'teamspeak-client' do
  version '3.0.18.2'
  sha256 '57cdbb8a85bc4d0ade6b2ae297b030e5ae5110b39abafc3ab8a21ab8588c1d99'

  # 4players.de is the official download host per the vendor homepage
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeamSpeak 3 Client.app'
end
