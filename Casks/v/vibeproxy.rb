cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.277"
  sha256 arm:   "065b231ce2912eefdf344e324f7486e2191930872edfea878658529014aca59c",
         intel: "aeb769af8cccc3e30180dbaa5050c08e06b8e2c352950703e45d8264871c588a"

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
