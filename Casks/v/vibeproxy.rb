cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.303"
  sha256 arm:   "ac558beaaaf7404e755c56f748389e0742da8baeb10199fa527a3f6b8fc8b958",
         intel: "ff1f52b98e53b91538b194d7fea0d26ca42b8b9e133abfb0c86ffa61892e846e"

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
