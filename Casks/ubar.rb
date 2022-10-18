cask "ubar" do
  version "4.2.1,421"
  sha256 "a9c64011f86de3975f3a5c9f616ea93ca84adae836b61ff4cdbb7f86546ed4c5"

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.csv.second}.zip"
  name "uBar"
  desc "Window manager and productivity tool"
  homepage "https://brawersoftware.com/products/ubar"

  livecheck do
    url "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
    strategy :sparkle
  end

  app "uBar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl*",
    "~/Library/Application Support/uBar",
    "~/Library/Caches/ca.brawer.uBar",
    "~/Library/Preferences/ca.brawer.uBar.plist",
  ]
end
