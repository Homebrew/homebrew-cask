cask "unclutter" do
  version "2.1.2200"
  sha256 "f2a60f896e8c8c1f21a1beb3b9c5a833343a2932ab423ebc8b791eb8db1cca1b"

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
