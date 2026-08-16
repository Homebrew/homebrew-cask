cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.271"
  sha256 arm:   "ef792eb3a72eed993663a73ff1cde52745e8d9266d19d86391899e9d8699dd7f",
         intel: "750461f969156fcaceaa490ed4561f2b2535f507b2b2fd1282843ee42d7fc0d9"

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
