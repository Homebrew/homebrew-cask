cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.356"
  sha256 arm:   "88481898e0c5e643c8c9706f003e6242220f3a83db5c66d70d5472a16ede249c",
         intel: "ad37fc467e25d6ac3625d91ceef1263d9226cd795929559a8b71fb411cdc39f9"

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
