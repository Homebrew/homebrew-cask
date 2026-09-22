cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.306"
  sha256 arm:   "48f8e763e87382c5484978df0e478b26634c1bc77db34044a55fdda876aefaec",
         intel: "65a534ae60b61cdc4caa80d3ee2dd87e7b69f26e4b7e87a08c0321f94805f9a8"

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
