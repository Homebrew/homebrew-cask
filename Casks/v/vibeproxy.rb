cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.355"
  sha256 arm:   "2ee23c5988653027bd380e4afa3fa2d5d51239d8375ffdfec9cfa5651ec95902",
         intel: "70e375c477fdcc914be3ada5e78bad554c9a31ba393886aea3ce2292ebecb456"

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
