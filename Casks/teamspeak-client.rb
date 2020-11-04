cask "teamspeak-client" do
  version "3.5.5"
  sha256 "f9788a7fb7052eb9df53c8e7841b8260207b42fc3adddedccc02c2ddce820829"

  # files.teamspeak-services.com/releases/client/ was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast "https://versions.teamspeak.com/ts3-client-2"
  name "TeamSpeak Client"
  homepage "https://www.teamspeak.com/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeamSpeak #{version.major} Client.app"
end
