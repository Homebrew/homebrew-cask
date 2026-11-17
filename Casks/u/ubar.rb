cask "ubar" do
  version "5.0.5"
  sha256 "731366b80f9d33ea933f54b1964a4a7a39a6de95d0a6319ac129f003152d9e96"

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
