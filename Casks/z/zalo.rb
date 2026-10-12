cask "zalo" do
  version "26.10.11"
  sha256 "ab5cc32985e57a322932d14887e9d72b3cdf1c9facb8e07abc9c10393ada3937"

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
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
