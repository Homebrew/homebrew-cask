cask "wins" do
  version "1.6.6"
  sha256 "594fb383c26f3b36dfa132312ddbafb0e59f7566616b5f02294e769cecf55605"

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
