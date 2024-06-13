cask "whale" do
  version "2.4.0"
  sha256 "63857d17bf6d44c65215d729870737a17153f33c01605dc093626b7185731b02"

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}.dmg"
  name "Whale"
  desc "Unofficial Trello app"
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
