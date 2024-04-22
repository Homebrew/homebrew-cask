cask "unclutter" do
  version "2.1.25d"
  sha256 :no_check

  url "https://unclutterapp.com/files/Unclutter.zip"
  name "Unclutter"
  desc "Desktop storage area for notes, files and pasteboard clips"
  homepage "https://unclutterapp.com/"

  livecheck do
    url "https://unclutterapp.com/updates/"
    strategy :sparkle, &:short_version
  end

  app "Unclutter.app"

  zap trash: [
    "~/Library/Application Scripts/*.group.com.softwareambience.Unclutter",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.softwareambience.unclutter.sfl*",
    "~/Library/Application Support/Unclutter",
    "~/Library/Caches/com.softwareambience.Unclutter",
    "~/Library/Containers/com.softwareambience.Unclutter",
    "~/Library/Group Containers/*.group.com.softwareambience.Unclutter",
    "~/Library/HTTPStorages/com.softwareambience.Unclutter",
    "~/Library/Preferences/com.softwareambience.Unclutter.plist",
  ]
end
