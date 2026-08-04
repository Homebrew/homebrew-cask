cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.259"
  sha256 arm:   "468ff57fdc352adb297a0fe0dbc913fede17b9586f2da288e68a24e32f30f167",
         intel: "dc24e9f9ef2e5d015df336e46f0b95a5d77171bee97488c0faea3dea30b94560"

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
