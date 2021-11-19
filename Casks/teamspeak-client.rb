cask "teamspeak-client" do
  desc "Voice communication client"

  if MacOS.version <= :catalina
    version "3.5.6"
    sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"

    url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg",
        verified: "files.teamspeak-services.com/"
  else
    version "3.5.7-beta.1"
    sha256 "993965f8c2a5f579de4ae17f6a6ac713557f7517d3ba5a9eb423cf95a33fbb90"

    url "https://files.teamspeak-services.com/pre_releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version.split("-").first}.dmg",
        verified: "files.teamspeak-services.com/"
  end

  name "TeamSpeak Client"
  homepage "https://www.teamspeak.com/"

  livecheck do
    url "https://versions.teamspeak.com/ts3-client-2"
    regex(/stable.*?v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"
end
