cask "witch" do
  version "4.3.6"
  sha256 "c0b367742ee080ee5b61c0ed724c419a84425c0224ab0b67bb9d4a8923bb6649"

  url "https://manytricks.com/download/witch"
  appcast "https://manytricks.com/witch/appcast.xml"
  name "Witch"
  homepage "https://manytricks.com/witch/"

  auto_updates true

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Preferences/com.manytricks.Witch.plist",
    "~/Library/Application Support/Witch",
  ]
end
