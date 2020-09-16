cask "teamspeak-client" do
  version "3.5.3"
  sha256 "6497d19e2f420da7866572f84db7123ff15c104b69cc70302ca9ee72fd19aa7d"

  # files.teamspeak-services.com/releases/client/ was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast "https://versions.teamspeak.com/ts3-client-2"
  name "TeamSpeak Client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"
end
