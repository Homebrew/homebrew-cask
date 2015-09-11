cask :v1 => 'teamspeak-client' do
  version '3.0.17'
  sha256 '0ceec488700527472b16d92b3a73dc2f6170865106687535bcbf589b19b7d556'

  # 4players.de is the official download host per the vendor homepage
  url "http://dl.4players.de/ts/releases/#{version}/TeamSpeak3-Client-macosx-#{version}.dmg"
  name 'TeamSpeak Client'
  homepage 'http://www.teamspeak.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TeamSpeak 3 Client.app'
end
