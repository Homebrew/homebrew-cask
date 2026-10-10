cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.329"
  sha256 arm:   "2d564637aa17a55a47528bae0aa26de07ab0af852af2893d7944cadc657449ca",
         intel: "0b32db65753b14b525df0e008934ac0c125a5ba91ce7e7a92a992a1aa16d76c0"

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
