cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.269"
  sha256 arm:   "bb1952d307acdccf12181e5c41e67ce893eec482611632190866e7b816644708",
         intel: "bad7d141df16e65d5d50c907d945e549a149517506a36e2093df7da84ed49b81"

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
