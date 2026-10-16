cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.336"
  sha256 arm:   "df851f0ae2fa9a6319960d3b15aae16d577bc0029e0abc1541bce30c8bb8459e",
         intel: "eac2e7393f2a535c29c726cd517edaea7848a4a15eaec3c7639e48f6b63f0dc6"

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
