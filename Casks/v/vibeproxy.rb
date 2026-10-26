cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.347"
  sha256 arm:   "70dc160eaafcf1499abf440bb467d452785f6b2c1568ad4382fb3d10b3810379",
         intel: "3e78ba3f37bb34ddfe4deae17102e1db65d6d3fbcff672b121e5d99253c63730"

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
