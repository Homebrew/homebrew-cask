cask "zalo" do
  version "26.11.20"
  sha256 "718d5093a458721dfb0a6d46461eb02058fc239d4890c99a6902455b2d968f36"

  url "https://res-download-pc.zadn.vn/mac/ZaloSetup-universal-#{version}.dmg"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on macos: :monterey

  app "Zalo.app"

  uninstall quit: "com.vng.zalo"

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
