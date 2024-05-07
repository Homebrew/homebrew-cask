cask "wakatime" do
  version "5.15.0"
  sha256 "15a0d36d69f653c65e03d7740d187f1e319869beaf20aaf9481c707f576ca9d8"

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
