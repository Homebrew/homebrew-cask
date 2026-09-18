cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.302"
  sha256 arm:   "a1c3f8907db063a84bafac34922735036f38f6e6427a0bb92d7aa521456e9966",
         intel: "4d0943e998774f598cb33130d695fa8a0410740dc14370215eae37aad76fd58f"

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
