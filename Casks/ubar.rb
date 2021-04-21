cask "ubar" do
  version "4.1.7,417"
  sha256 "03990e92a871b6a2bb7af840bceef59325eaad8678d31ba5ed256faa0beea745"

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
