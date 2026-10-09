cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.328"
  sha256 arm:   "56447b2d2df90005a7387795de9f310dadc6ad90fccdbf12e344813c4a02af49",
         intel: "2edea944975e5b2561c743fe6ae0578d2ebfe9a148fff4c29f65f10458741904"

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
