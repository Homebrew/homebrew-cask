cask "zalo" do
  version "26.10.20"
  sha256 "a45d30b7f7b060f76b87722ef419b8f41d23a2913cdef084dcb0955dde8d85a0"

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
