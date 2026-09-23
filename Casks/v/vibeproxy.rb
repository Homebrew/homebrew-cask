cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.308"
  sha256 arm:   "e4d3fe25cccf333a71098f61761aa6f3fc363c1eb13595f6fd7b0faa235a1dec",
         intel: "a0881229b5f8f3d42ada3d9d8be652f51c5a4a2b962a8513ebdfa31164fcc72d"

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
