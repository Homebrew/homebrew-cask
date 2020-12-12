cask "whale" do
  version "2.1.0"
  sha256 "d9498d0c478daa9f53d3db4a26124f821e9238de993de98299c0805dfccfa50b"

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
