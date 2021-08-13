cask "ubar" do
  version "4.1.8,418"
  sha256 "375a85ac413fe85f398b50992f8b8c3d87e629647fdd7cac54a938de8c4fceeb"

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.after_comma}.zip"
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
