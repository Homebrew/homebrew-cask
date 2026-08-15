cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.270"
  sha256 arm:   "e8185df17f32e46f0cb37c2069d425b722d7b02e2bfa561493655591afc5b19c",
         intel: "6c2557b7f15b9cb8d62876d225ef878e70b858a6ca33ae0d58c51ee29ea50ede"

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
