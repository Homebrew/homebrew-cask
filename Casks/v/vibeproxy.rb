cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.267"
  sha256 arm:   "ff7d4888ec5949f9a369ce7faf33b8ef1213b45fa8d627793192112c0750907e",
         intel: "5d2ee42998d375910813820feb94f84370ac8e3ee03aa010a9a40740334abc97"

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
