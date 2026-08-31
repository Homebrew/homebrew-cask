cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.284"
  sha256 arm:   "7347e06be663d89bdf61b9a0ba430546cee7131ca6b469d8b6dbc17e30ebbd09",
         intel: "33093ca96f34368645adb433d71e43ed648b23916a55a2e1eadd7d1d61f5f998"

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
