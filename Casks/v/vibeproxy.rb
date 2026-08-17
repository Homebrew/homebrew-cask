cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.272"
  sha256 arm:   "4eef56969b3e0a120c1841f320ddc7ae9810a2a5a4b40709abbe6de9c893bacc",
         intel: "7d27262ad3e4d793d0a3da448f4a2a1963552ed2d5d91e12ef6e25cfb5876d6b"

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
