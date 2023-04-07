cask "zalo" do
  version "23.3.1"
  sha256 "d400e2d07c7e102d9f65a28ad50628a3eb7acaa2f40a0616a3067654d0db91e5"

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
