cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.304"
  sha256 arm:   "60737ec830ed7e057f4303f30d9a7c1d44f4d9c4533e8ed4ad8cf2a8e27ebe1e",
         intel: "f8a65591115c12e1d974149b2ff8735704249df41f24469d1083bef7d28e792c"

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
