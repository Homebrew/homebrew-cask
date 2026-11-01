cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.353"
  sha256 arm:   "343a667f8c17b26b93d750cc62226d8c62a7c2372bb7757ce80d7f9b13cb57fe",
         intel: "c923caca013f791f4816ae63400482030aa0e8697d4c143d1f56ad3d32f2ac35"

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
