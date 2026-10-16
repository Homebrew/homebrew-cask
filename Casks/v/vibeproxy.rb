cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.335"
  sha256 arm:   "89d7efe5d302d2e9feecef8277e3606be0ea021c6f30cc4620c31eb2219c7ebe",
         intel: "8d0e887c00336fbf5a74c39a7d5d3a249388ad4aac214ffaaaa725330bdfabb6"

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
