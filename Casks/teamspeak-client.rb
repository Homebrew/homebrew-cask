cask :v1 => 'teamspeak-client' do
  version '3.0.18.1'
  sha256 '9a2dc5e348aeed85f8e9630ffdfbe9c1e770594c81892beb8b2d73f4b118e4b2'

  # 4players.de is the official download host per the vendor homepage
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'http://www.teamspeak.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeamSpeak 3 Client.app'
end
