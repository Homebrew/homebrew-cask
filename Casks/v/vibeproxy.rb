cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.341"
  sha256 arm:   "2fe3337754e41cfc188829417f0ce6875f09acbc5ab816c7c33f76148f74a29d",
         intel: "a4db73a521fb1006c6a273dfbaee6ef0cdd3134745a4dd8ecf63496cc9ce24c3"

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
