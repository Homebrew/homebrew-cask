cask "tyme" do
  version "2026.8"
  sha256 :no_check

  url "https://www.tyme-app.com/app/Tyme.dmg"
  name "Tyme"
  desc "Time tracking app"
  homepage "https://www.tyme-app.com/"

  livecheck do
    url "https://api.tyme-app.com/v1/updates?unique_id=&version=&version=#{version}"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tyme.app"

  uninstall quit: ["com.tyme-app.Tyme3-MenubarHelper",
                   "com.tyme-app.Tyme3-macOS"]

  zap trash: [
    "~/Library/Application Scripts/com.tyme-app.Tyme3-macOS.Direct-Widget",
    "~/Library/Application Scripts/com.tyme-app.Tyme3-MenubarHelper",
    "~/Library/Application Scripts/HR22V4547K.com.tyme-app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tyme-app.tyme3-menubarhelper.sfl*",
    "~/Library/Caches/com.tyme-app.Tyme3-macOS",
    "~/Library/Containers/com.tyme-app.Tyme3-macOS*",
    "~/Library/Containers/com.tyme-app.Tyme3-MenubarHelper",
    "~/Library/Group Containers/HR22V4547K.com.tyme-app",
    "~/Library/HTTPStorages/com.tyme-app.Tyme3-macOS",
    "~/Library/Logs/DiagnosticReports/Tyme-2026-08-21-110730.ips",
    "~/Library/Preferences/com.tyme-app.Tyme3-macOS.plist",
  ]
end
