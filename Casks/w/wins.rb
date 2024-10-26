cask "wins" do
  version "2.3"
  sha256 "907059e8656d29aa0935a044767b4cd1bef14e4d21470fe5b3d4965ae38331d3"

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
