cask "unclutter" do
  version "2.1.22d,2.1.2200"
  sha256 :no_check

  url "https://unclutterapp.com/files/Unclutter.zip"
  appcast "https://unclutterapp.com/updates/"
  name "Unclutter"
  desc "Desktop storage area for notes, files and pasteboard clips"
  homepage "https://unclutterapp.com/"

  app "Unclutter.app"

  zap trash: [
    "~/Library/Application Support/Unclutter",
    "~/Library/Caches/com.softwareambience.Unclutter",
    "~/Library/Containers/com.softwareambience.Unclutter",
    "~/Library/Group Containers/*.com.softwareanbience.Unclutter",
    "~/Library/Preferences/com.softwareambience.Unclutter.plist",
  ]
end
