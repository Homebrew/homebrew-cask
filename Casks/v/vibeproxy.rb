cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.351"
  sha256 arm:   "24f2e3629e72651b1ac45ed0b4ff5f004ae0bc76f72e4487a12626f2ab4957e8",
         intel: "08393fd192335d4b4884e035636a3e5022af6edce525c5d17ecdb24e0ed6b7b9"

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
