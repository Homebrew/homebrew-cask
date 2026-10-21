cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.340"
  sha256 arm:   "ad276d4b2815370eb0bb4ec4c2d188775e4e3c1de99bade06efe2eec8fd6373b",
         intel: "993d40237826324cda6d1c3200b6455c423df105f5bfe3eb02071cff79137d6a"

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
