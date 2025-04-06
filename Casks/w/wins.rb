cask "wins" do
  version "2.6.1"
  sha256 "dc19854ff982c1238615a6aa5776cf0770ae75aa68ea950a4ff2bb365ef8b15a"

  url "https://f005.backblazeb2.com/file/winsWebsite/Wins_#{version}.zip",
      verified: "f005.backblazeb2.com/file/winsWebsite/"
  name "Wins"
  desc "Window manager"
  homepage "https://wins.cool/"

  livecheck do
    url "https://wins.cool/update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wins.app"

  zap trash: [
    "~/Library/Application Support/cools.wins.main",
    "~/Library/Application Support/Wins",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Containers/WinsHelper",
    "~/Library/HTTPStorages/cools.wins.main",
    "~/Library/Preferences/com.tinynudge.pomello.plist",
  ]
end
