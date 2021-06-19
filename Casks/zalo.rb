cask "zalo" do
  version "21.6.1"
  sha256 "d5d54dc04b1a3939c3c906118b44989b87c08dc5bdcb04f207faa87dda9558a2"

  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-#{version}.dmg#",
      verified: "res-zaloapp-aka.zdn.vn/mac/"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
