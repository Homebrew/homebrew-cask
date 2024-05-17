cask "wins" do
  version :latest
  sha256 :no_check

  url "https://f005.backblazeb2.com/file/winsWebsite/Wins-latest-1.6.6.dmg", verified: "backblazeb2.com/file/winsWebsite/"
  name "Wins"
  desc "Brand new window manager"
  homepage "https://wins.cool/"
  depends_on macos: '>= :high_sierra'
  app "Wins.app"
  zap trash: [
    "~/Library/Application Support/cools.wins.main",
    "~/Library/Application Support/Wins",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Containers/WinsHelper",
    "~/Library/HTTPStorages/cools.wins.main",
    "~/Library/Preferences/com.tinynudge.pomello.plist",
  ]
end
