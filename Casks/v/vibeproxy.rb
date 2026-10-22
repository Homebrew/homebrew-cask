cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.342"
  sha256 arm:   "cd2190421f54b2673672a21de51cf7aaa69ecc5159c0e217b0ed6908c9499706",
         intel: "372b3c0c998fcd40c1761f8e1d8b3eecc20a9c715c7a5f5a04b1950db230105a"

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
