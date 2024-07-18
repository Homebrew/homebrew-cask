cask "wins" do
  version "2.1.1"
  sha256 "41cf4bf35676ce9ff77082bc919baeac499269c8bcc7b31828884fe6ae3b9298"

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
