cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.265"
  sha256 arm:   "2b4b3e60c4d60668c572614f4896df0ccf5bb542ecc6651ceee1fa6b9fd33db3",
         intel: "069c43f60e0e178c0cc9500404e6900959583b22e153eb949f4fede76b8a59c3"

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
