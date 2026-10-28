cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.349"
  sha256 arm:   "6400851f862af066c0943b1f76b87ae0360e83b80497491ea3b80aa6bf5de549",
         intel: "3cda57048ef1293b604b84f7a21b37f46271dfb30dba9a2ac50667789a7a90c7"

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
