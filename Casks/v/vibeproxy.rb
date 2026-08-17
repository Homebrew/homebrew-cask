cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.273"
  sha256 arm:   "2dd5ca441e163e1a55652a59d00df2109ee898f5d87d65ee56f0053cafbb08b6",
         intel: "d17478319a213659c522fbcf533a60c3b20a374c64a2c7f854810e685a8a765a"

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
