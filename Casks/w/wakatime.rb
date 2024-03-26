cask "wakatime" do
  version "5.13.2"
  sha256 "742674adf079d58af4f6524f84cf39ae63b8cd064047847c526945c9f583fa0f"

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
