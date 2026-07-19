cask "whooing" do
  version "0.1.1"
  sha256 "2c5be3beca2024c85548171a86efe85fc49d2abd125957d27ae96beccb42eb3f"

  url "https://github.com/zidell/whooing-desktop/releases/download/v#{version}/Whooing_#{version}_universal.dmg",
      verified: "github.com/zidell/whooing-desktop/"
  name "Whooing"
  desc "Desktop app for the Whooing double-entry bookkeeping service"
  homepage "https://whooing.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Whooing.app"

  zap trash: [
    "~/Library/Caches/com.whooing.desktop",
    "~/Library/HTTPStorages/com.whooing.desktop",
    "~/Library/Preferences/com.whooing.desktop.plist",
    "~/Library/Saved Application State/com.whooing.desktop.savedState",
    "~/Library/WebKit/com.whooing.desktop",
  ]
end
