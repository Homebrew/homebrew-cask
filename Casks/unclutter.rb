cask "unclutter" do
  version "2.1.24d,2.1.2400"
  sha256 :no_check

  url "https://unclutterapp.com/files/Unclutter.zip"
  name "Unclutter"
  desc "Desktop storage area for notes, files and pasteboard clips"
  homepage "https://unclutterapp.com/"

  livecheck do
    url "https://unclutterapp.com/updates/"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Unclutter.app"

  zap trash: [
    "~/Library/Application Support/Unclutter",
    "~/Library/Caches/com.softwareambience.Unclutter",
    "~/Library/Containers/com.softwareambience.Unclutter",
    "~/Library/Group Containers/*.com.softwareanbience.Unclutter",
    "~/Library/Preferences/com.softwareambience.Unclutter.plist",
  ]
end
