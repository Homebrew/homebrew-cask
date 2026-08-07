cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.263"
  sha256 arm:   "1045acae6ef2f59de87b62dc710e89328a4dea4d35ee8ef244785ebcfbdb49e5",
         intel: "4ce28a65af9f45a0038931e61d104e10d744567064c69ef6000cfe9e57dba27e"

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
