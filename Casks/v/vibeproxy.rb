cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.318"
  sha256 arm:   "8781175f29178fc63210e38bec59c5586ed7c258aa64bbbea940c66ee40e0756",
         intel: "f41ddf6e58d1044c375201eee715f0d375f7b385d0832b0c90829b20186de515"

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
