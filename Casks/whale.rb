cask "whale" do
  version "2.0.1"
  sha256 "6627d1f2d264ad0a4d300763089c875e21ad7bcd1b37557fbbcb77c108033238"

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
