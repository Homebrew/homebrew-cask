cask "whale" do
  version "2.0.2"
  sha256 "5b540eceda8a15b169df41d1a57dcace5a244e00909980e7c4607abdee051597"

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}.dmg"
  appcast "https://github.com/1000ch/whale/releases.atom"
  name "Whale"
  desc "Unofficial Trello app :whale:"
  homepage "https://github.com/1000ch/whale"

  app "Whale.app"

  zap trash: [
    "~/Library/Application Support/Whale",
    "~/Library/Caches/net.1000ch.whale",
    "~/Library/Caches/net.1000ch.whale.ShipIt",
    "~/Library/Preferences/net.1000ch.whale.helper.plist",
    "~/Library/Preferences/net.1000ch.whale.plist",
    "~/Library/Saved Application State/net.1000ch.whale.savedState",
  ]
end
