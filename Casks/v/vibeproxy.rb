cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.299"
  sha256 arm:   "7a28a50005a01b24a509a12bb55fe88310279e694cd3d88917886f6c6579cbff",
         intel: "2b14fc4ffa408186a18f7e8de640acb9519f2b43180fe59037beab0aa4c12771"

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
