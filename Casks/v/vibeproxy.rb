cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.280"
  sha256 arm:   "d1eb015e9dd1f3e1a6e17f32c9c314264bd3398f74de7f4317c902213c2de475",
         intel: "e61e813d2ea50cf26d3f3f01654f30b65a75ce0ccb6d16f9dd31ebb17f022152"

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
