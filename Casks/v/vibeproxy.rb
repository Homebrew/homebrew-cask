cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.276"
  sha256 arm:   "312b9b86b5e52e8f95190788c4fae13143d99098f65f21206f0dcd21051bd000",
         intel: "7a2a7d37bb0ea1f9f85d92a64c8c43fd09c0483ec5a41ac45e275239bea170d1"

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
