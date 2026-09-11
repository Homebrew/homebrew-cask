cask "ubar" do
  version "4.2.4"
  sha256 "56ee55f04ebfcec1503dcbc5f2dcb2fd6a0d486221dba3e4a5a60aa93d13f219"

  url "https://data.brawersoftware.com/downloads/ubar/ubar#{version.no_dots}.zip"
  name "uBar"
  desc "Dock replacement and taskbar"
  homepage "https://ubarapp.com/"

  livecheck do
    url "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on :macos

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
