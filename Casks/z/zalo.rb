cask "zalo" do
  version "26.11.10"
  sha256 "eff7e9c887a1164ae078e919f950b5552ffc3d846f8a63bd12ce88171ba79092"

  url "https://res-download-pc.zadn.vn/mac/ZaloSetup-universal-#{version}.dmg"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on :macos

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vng.zalo.sfl*",
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloData",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Preferences/com.vng.zalo.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
