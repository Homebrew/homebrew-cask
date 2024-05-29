cask "wins" do
  version "2.0.1"
  sha256 "fc5e39db3591b50e11462d30bd8934e299b8bb2ab6168f6e504d2dfcac6b318b"

  url "https://f005.backblazeb2.com/file/winsWebsite/Wins-latest-#{version}.dmg",
      verified: "f005.backblazeb2.com/file/winsWebsite/"
  name "Wins"
  desc "Window manager"
  homepage "https://wins.cool/"

  livecheck do
    url "https://wins.cool/"
    regex(/href=.*?Wins[._-]latest[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

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
