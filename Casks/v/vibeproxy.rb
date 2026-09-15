cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.298"
  sha256 arm:   "0b55338273a58db8763dcdf0b4a482bb24bdaafc47743baa330a433a902e5a62",
         intel: "67b75963dc983960bdeb80a075396f7bfa1b0c144c386048d128e65d36b876fc"

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
