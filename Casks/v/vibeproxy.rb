cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.309"
  sha256 arm:   "79cade31b54cd75f0e8a49a7e5f76d8153e32cac357a2f38d8b23d5570744552",
         intel: "6fc57ae0038f6e04707db389847172ec38d951cffe752ddb65f1adc2b8556674"

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
