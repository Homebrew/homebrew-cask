cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.339"
  sha256 arm:   "1cbb149d3c50fb93fec4632b1c86df12434e3ff8fcad2e6c730e2ea1ef728470",
         intel: "5fcd0bc9b444e83492790e3319e59cc7c4a2ee411452cb0c08e1966f09d065f5"

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
