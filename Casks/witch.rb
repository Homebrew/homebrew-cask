cask "witch" do
  version "4.3.8,3504"
  sha256 :no_check

  url "https://manytricks.com/download/witch"
  name "Witch"
  homepage "https://manytricks.com/witch/"

  livecheck do
    url "https://manytricks.com/witch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Preferences/com.manytricks.Witch.plist",
    "~/Library/Application Support/Witch",
  ]
end
