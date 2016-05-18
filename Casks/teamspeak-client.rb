cask 'teamspeak-client' do
  version '3.0.19'
  sha256 'c22852c1633f82e99adcf363c1b917f21f8edaf7bc69ed7099a676c4a6ea371f'

  # 4players.de is the official download host per the vendor homepage
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeamSpeak 3 Client.app'
end
