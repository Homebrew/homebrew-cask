cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.311"
  sha256 arm:   "103b9f3a72dbedf8ce7ebfcdb76937ff70ebd0d1eb9b58948f5d795e31c64bef",
         intel: "04e519fb6d309b4a0f7f2105b6e315cef6dc96b4936ac1a98c8bb1366e054716"

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
