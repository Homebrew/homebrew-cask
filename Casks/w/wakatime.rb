cask "wakatime" do
  version "5.28.5"
  sha256 "86a1996c6843078baea7fe5bae1060127c96f423484dcbe103ef7cf0a2d730b3"

  url "https://github.com/wakatime/macos-wakatime/releases/download/v#{version}/macos-wakatime.zip"
  name "Wakatime"
  desc "System tray app for automatic time tracking"
  homepage "https://wakatime.com/mac"

  depends_on :macos

  app "WakaTime.app"

  zap trash: [
    "~/Library/Application Support/macos-wakatime.WakaTime",
    "~/Library/Caches/macos-wakatime.WakaTime",
    "~/Library/HTTPStorages/macos-wakatime.WakaTime",
    "~/Library/Preferences/macos-wakatime.WakaTime.plist",
  ]
end
