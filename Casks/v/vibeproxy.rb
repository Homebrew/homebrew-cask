cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.241"
  sha256 arm:   "6837b16ebfd3a7ba8ea5ce4a63e7f966e90224fd3a0107b5eb1228d1e922a890",
         intel: "0f4f183306949d5cd6e0f4d628207cf406dfefac0c0788cd79cedcb54b001b19"

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

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
