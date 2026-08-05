cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.260"
  sha256 arm:   "2964abcad6c624533a0879b66b15acbeb31aa728dd1efb600b851e6fe70ae755",
         intel: "398103407d21c888a0f0962ab5a2718027b635574ba1e1f65496fe4dd93ad033"

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
