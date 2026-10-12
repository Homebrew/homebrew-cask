cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.331"
  sha256 arm:   "923661b095b22ed146fa606ceca6785cf1efcf51a3e15275a40a2ccbb09b2bc2",
         intel: "9b8b09d99e7213faaac89b3666efca25a117364e4b8009f06e691eba71dc12ab"

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
