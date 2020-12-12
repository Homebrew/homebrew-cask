cask "teamspeak-client" do
  version "3.5.6"
  sha256 "03c8e44256f2028917866924e496d4704de9e3298252f433fc53cfa37282770e"

  # files.teamspeak-services.com/releases/client/ was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast "https://versions.teamspeak.com/ts3-client-2"
  name "TeamSpeak Client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"
end
