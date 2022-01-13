cask "teamspeak-client" do
  if MacOS.version <= :catalina
    version "3.5.6"
    sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"

    url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg",
        verified: "files.teamspeak-services.com/"

    livecheck do
      url "https://versions.teamspeak.com/ts#{version.major}-client-2"
      regex(/stable.*?v?(\d+(?:\.\d+)+)/i)
    end
  else
    version "3.5.7-beta.1"
    sha256 "993965f8c2a5f579de4ae17f6a6ac713557f7517d3ba5a9eb423cf95a33fbb90"

    url "https://files.teamspeak-services.com/pre_releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version.split("-").first}.dmg",
        verified: "files.teamspeak-services.com/"

    livecheck do
      skip "No version information available"
    end
  end

  name "TeamSpeak Client"
  desc "Voice communication client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"

  zap trash: [
    "~/Library/Application Support/TeamSpeak #{version.major}",
    "~/Library/Application Support/CrashReporter/ts#{version.major}client_*.plist",
    "~/Library/Preferences/com.teamspeak.TeamSpeak#{version.major}.plist*",
    "~/Library/Saved Application State/com.teamspeak.TeamSpeak#{version.major}.savedState",
  ]
end
