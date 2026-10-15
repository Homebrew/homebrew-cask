cask "ubar" do
  version "4.2.6"
  sha256 "9626d70dd3b90c65ee68c159ee41864f582be1fca0f2c020b56a558bd6abfe50"

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
