cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.279"
  sha256 arm:   "4037df9fe661d9bded7918a46200b94cc8b59ee7dd1cfbbc43b263c673b01ba0",
         intel: "d62710b3d562d654caf244d8a2ee6db1b938a3077eea9c4845606fff419ec389"

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
