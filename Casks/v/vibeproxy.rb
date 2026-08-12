cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.268"
  sha256 arm:   "62d04f576d0c64c8b66c191af5cbdfb6bf78b0484a153b3b6099c663529f1c1a",
         intel: "074e9e7810a53d6e357ccb532354d24533381b15aa553f911329f27ddba6722f"

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
