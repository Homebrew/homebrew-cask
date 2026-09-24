cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.310"
  sha256 arm:   "1307de9720fe0ec147db854da1b5cec9ca1ff10326fd17ca1c0af56dcdc286a6",
         intel: "3405134a09374af53fa1eadd80897e6bc0aac1a9a13682c0b9410f410569af0f"

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
