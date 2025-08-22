cask "tyme" do
  version "2025.8"
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
  depends_on macos: ">= :big_sur"

  app "Tyme.app"

  zap trash: [
    "~/Library/Application Scripts/com.tyme-app.Tyme3-macOS",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tyme-app.tyme3-menubarhelper.sfl*",
    "~/Library/Application Support/com.tyme-app.Tyme3-macOS",
    "~/Library/Caches/CloudKit/com.tyme-app.Tyme3-macOS",
    "~/Library/Caches/com.tyme-app.Tyme3-macOS",
    "~/Library/Containers/com.tyme-app.Tyme3-macOS",
    "~/Library/Containers/com.tyme-app.Tyme3-MenubarHelper",
    "~/Library/Group Containers/*.group.com.tyme-app.Tyme3",
    "~/Library/HTTPStorages/com.tyme-app.Tyme3-macOS",
    "~/Library/Preferences/3https:/api.tyme-app.com",
    "~/Library/Preferences/com.tyme-app.Tyme3-macOS.plist",
    "~/Library/Saved Application State/com.tyme-app.Tyme3-macOS.savedState",
  ]
end
