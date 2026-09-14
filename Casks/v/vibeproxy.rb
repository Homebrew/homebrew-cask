cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.294"
  sha256 arm:   "2f1092ec1480537127ab5e6a65d336aeb99e96c3918aaa5c9e9de27cc727ad05",
         intel: "3768e4fff91971c4c7b78cfe734bc681f7bbf9e087e5bd90c260d1b49368ff88"

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
