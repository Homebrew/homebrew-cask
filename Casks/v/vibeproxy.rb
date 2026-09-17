cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.301"
  sha256 arm:   "7c595233bd30f85eef6c91b755e937e459688b3b11f3e006beb43959ef61fa0f",
         intel: "fc4f9da3e085cbafe4a8b6c8b85efc4d6de24ca54c2a8007383070b03eec708a"

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
