cask "teamspeak-client" do
  version "3.5.6"

  sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"
  url "https://dl.4players.de/ts/releases/#{version.before_comma}/TeamSpeak3-Client-macosx-#{version.before_comma}.dmg"

  name "TeamSpeak 3 Client"
  desc "powered by 4Netplayers"
  homepage "https://www.teamspeak.de/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "TeamSpeak 3 Client.app"

end
