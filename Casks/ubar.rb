cask "ubar" do
  version "4.1.9,419"
  sha256 "4b741395d49db1a82915469f9f1f28f97a2fe15ac62325beb337248e01ae62cf"

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
