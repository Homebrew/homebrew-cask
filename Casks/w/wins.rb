cask "wins" do
  version "2.5"
  sha256 "de02157d6ae2d59e4a95e76acae5038f94e5a05f75a96cca96a6f4b4348f806d"

  url "https://f005.backblazeb2.com/file/winsWebsite/Wins-latest-#{version}.dmg",
      verified: "f005.backblazeb2.com/file/winsWebsite/"
  name "Wins"
  desc "Window manager"
  homepage "https://wins.cool/"

  livecheck do
    url :homepage
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
