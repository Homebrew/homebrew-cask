cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.320"
  sha256 arm:   "e488e6bb125423737334ddf88cc71efd53d22c6a2932229d289cfdcfc3de54d5",
         intel: "06d16a487008753c0fe8d609658f04308df38ea85382a4d8b427bd14a468af8b"

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
