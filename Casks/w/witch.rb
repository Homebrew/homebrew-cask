cask "witch" do
  version "4.6.2"
  sha256 "cb9d946400e00221c72706487ac7ba3760e75a8e0f0e46b26bf9a5da79784b25"

  url "https://manytricks.com/download/_do_not_hotlink_/witch#{version.no_dots}.dmg"
  name "Witch"
  desc "Switch apps, windows, or tabs"
  homepage "https://manytricks.com/witch/"

  livecheck do
    url "https://manytricks.com/witch/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Application Support/Witch",
    "~/Library/Preferences/com.manytricks.Witch.plist",
  ]
end
