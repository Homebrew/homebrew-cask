cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.338"
  sha256 arm:   "8dc164ad235ccc123be96f2f4700d51602c4565db68e9adb5b659e5b093606ea",
         intel: "dee9281ef3360a79176d1b0907a65b3b1c736086ec50f3a114e1f37969ed1dc9"

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
