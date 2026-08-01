cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.257"
  sha256 arm:   "ff34ba1b43bb07cfec9f3621dea3600564eab80c641f6822c6063dd82054bc2b",
         intel: "4a1e7a8aa2da63acff14ee837c50311fa9e846f9aec6f8c03cb79f953a9925b6"

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
