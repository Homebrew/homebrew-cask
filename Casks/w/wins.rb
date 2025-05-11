cask "wins" do
  version "2.6.1,42"
  sha256 "8a20b3ff14fbbb13a5f79d76c933b9376e9c4ea70192e2a2b8a463698286e14a"

  url "https://winswebsite.s3.us-east-005.backblazeb2.com/Wins_#{version.csv.first}_#{version.csv.second}.zip",
      verified: "winswebsite.s3.us-east-005.backblazeb2.com/"
  name "Wins"
  desc "Window manager"
  homepage "https://wins.cool/"

  livecheck do
    url "https://wins.cool/update/appcast.xml"
    strategy :sparkle
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
