cask "wins" do
  version "2.6"
  sha256 "713f5c3c49eeccae2189e1c9059876efde19c0e6bde99e0c9852b3e9364512df"

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
