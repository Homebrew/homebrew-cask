cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.264"
  sha256 arm:   "65a63febbdebb12cddf6858bc773438e8e77c5cec23570e71522c5ad10949d1f",
         intel: "809f7918833b3514c511e3774530922a3ed47b5601296d4733c6644f86960c33"

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
