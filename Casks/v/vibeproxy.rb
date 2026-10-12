cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.330"
  sha256 arm:   "16b3723625c7781b85faeded944f0642a9540a13be0b87130cb90ac4f5c80e88",
         intel: "aa5a4fefe3ecdcdfa034899a72c380c09118e18f67e2d1e85b873affe38c5865"

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
