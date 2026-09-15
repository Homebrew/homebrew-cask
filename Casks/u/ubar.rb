cask "ubar" do
  version "4.2.5"
  sha256 "a42e291dd832e773a4be194cb70106c19e18f2ca765781b7c71b57cc37b20938"

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
