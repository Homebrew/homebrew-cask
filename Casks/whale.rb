cask "whale" do
  version "1.3.1"
  sha256 "ceb119d4ad7cf725f8dfba527b899decd196c952d57e2996bc9b44f4ca5cd524"

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-#{version}.dmg"
  appcast "https://github.com/1000ch/whale/releases.atom"
  name "Whale"
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
