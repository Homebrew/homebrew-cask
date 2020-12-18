cask "witch" do
  version "4.3.6"
  sha256 :no_check

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
