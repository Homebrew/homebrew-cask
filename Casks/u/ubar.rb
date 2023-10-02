cask "ubar" do
  version "4.2.2,422"
  sha256 "5c7e30c33761430b034f56d91f1d1e280ad0672cff9601917a214a5702b09319"

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.csv.second}.zip"
  name "uBar"
  desc "Window manager and productivity tool"
  homepage "https://brawersoftware.com/products/ubar"

  livecheck do
    url "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "uBar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl*",
    "~/Library/Application Support/uBar",
    "~/Library/Caches/ca.brawer.uBar",
    "~/Library/HTTPStorages/ca.brawer.uBar",
    "~/Library/Preferences/ca.brawer.uBar.plist",
    "~/Library/WebKit/ca.brawer.uBar",
  ]
end
