cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.326"
  sha256 arm:   "3b612c269183354a2430e321618a67f4ad06bde00a65e8c0cef1622d02788309",
         intel: "6d8245a5affca927887fd0c7a2257f243ff9d6dc3b634155d7f5774133fd7d8d"

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
