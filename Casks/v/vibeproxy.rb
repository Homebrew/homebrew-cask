cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.332"
  sha256 arm:   "5df1576109d749b29950880a568a143528cc76ae610f12190f0644f84a9d27ba",
         intel: "0232c7c6bb6a7ce40ce3ac1c88aaf853af59a45d119cda886c35a22e90df36d8"

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
