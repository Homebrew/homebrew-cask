cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.327"
  sha256 arm:   "176ec913072bfd43ff0d008dd6dc06239b0c5b774560c8a3e002fdb02307a68a",
         intel: "d87d57c37209388dd093d300b2f0788c224c16bac4483579b189e46bdc8ddb90"

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
