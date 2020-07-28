cask "witch" do
  version "4.3.5"
  sha256 "5fd6f1e2678c1c4687527612f981b3fec7c3d33aae3344a2548fd758ae75b4b3"

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
