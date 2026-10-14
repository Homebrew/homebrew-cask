cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.333"
  sha256 arm:   "82e9bf5529af9419e4ce52124ff40d4cb27ad52fb68cb7af85037c2a0eb5e56c",
         intel: "487226d2dc558e3394173a9b14f6a2fcdae0b25b2b3f455d01b11742c0df4124"

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
