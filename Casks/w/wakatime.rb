cask "wakatime" do
  version "5.14.3"
  sha256 "f305bd53c37f152b9b9e6d26d9940b54aabb2a3058bd604f9b988a07aadb40f6"

  url "https://github.com/wakatime/macos-wakatime/releases/download/v#{version}/macos-wakatime.zip",
      verified: "github.com/wakatime/macos-wakatime/"
  name "Wakatime"
  desc "System tray app for automatic time tracking"
  homepage "https://wakatime.com/mac"

  depends_on macos: ">= :catalina"

  app "WakaTime.app"

  zap trash: [
    "~/Library/Application Support/macos-wakatime.WakaTime",
    "~/Library/Caches/macos-wakatime.WakaTime",
    "~/Library/HTTPStorages/macos-wakatime.WakaTime",
    "~/Library/Preferences/macos-wakatime.WakaTime.plist",
  ]
end
