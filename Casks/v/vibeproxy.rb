cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.285"
  sha256 arm:   "c37b18c76afe5ecae91dea9a0fe06aa7f7a2b679654a2d6b86dc03e9bf3ab19f",
         intel: "4a9970c4b0120adaff1f072f94924d9009644601a8403a05af668712688375b1"

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
