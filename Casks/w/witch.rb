cask "witch" do
  version "4.6.1"
  sha256 :no_check

  url "https://manytricks.com/download/witch"
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
