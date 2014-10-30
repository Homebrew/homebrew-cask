class Teamspeak < Cask
  version '3.0.16'
  sha256 'ff0bece49ca1d7b129775e7fb492a005e0a9d2ece78b9f117cbae991a8ca8910'

  url 'http://dl.4players.de/ts/releases/3.0.16/TeamSpeak3-Client-macosx-3.0.16.dmg'
  homepage 'www.teamspeak.com'
  license :commercial

  app 'TeamSpeak 3 Client.app'
end
