cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.354"
  sha256 arm:   "b1bbfd19e5d116e2e1974d4057a40f158c2b75754c00dab9ee3b5584c9d16fee",
         intel: "4452e8667ef8d4adf7a47b5563a63656ef023d943a6ff759b92ce3e0ee760a79"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
