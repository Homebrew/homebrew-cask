cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.321"
  sha256 arm:   "e2b8fa4a276af5b8bb2c78d4c702f1073a7556b561ca8720601d73ba7cf7e177",
         intel: "cf737ebdf1987cd2cbdbe78cf961acb0b3be35eccb418974ac361c9822373870"

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
