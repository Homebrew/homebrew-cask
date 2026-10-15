cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.334"
  sha256 arm:   "7af7e0b39ec93f56ad8964c91c158320939658a85f41891bf17366dc85f886f9",
         intel: "621c6e6e8000d4d484d724ba684aae12a9fc8a792273364335f228cbb33538c7"

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
