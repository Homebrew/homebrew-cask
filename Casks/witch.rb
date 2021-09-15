cask "witch" do
  version "4.4.3,3520"
  sha256 :no_check

  url "https://manytricks.com/download/witch"
  name "Witch"
  desc "Switch apps, windows, or tabs"
  homepage "https://manytricks.com/witch/"

  livecheck do
    url "https://manytricks.com/witch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  prefpane "Witch.prefPane"

  uninstall quit:       "com.manytricks.witchdaemon",
            login_item: "witchdaemon"

  zap trash: [
    "~/Library/Application Support/Witch",
    "~/Library/Preferences/com.manytricks.Witch.plist",
  ]
end
