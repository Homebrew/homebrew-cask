cask "witch" do
  version "4.6.2"
  sha256 "c9d54299613aefbf737e6d47bc9dfeac75a95172cf6350952986532fd55a3905"

  url "https://manytricks.com/download/_do_not_hotlink_/witch#{version.no_dots}.dmg"
  name "Witch"
  desc "Switch apps, windows, or tabs"
  homepage "https://manytricks.com/witch/"

  livecheck do
    url "https://manytricks.com/witch/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Application Support/Witch",
    "~/Library/Preferences/com.manytricks.Witch.plist",
  ]
end
