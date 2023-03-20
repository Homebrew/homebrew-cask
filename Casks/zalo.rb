cask "zalo" do
  version "23.2.2"
  sha256 "ad71e3653a1ea9d5c84eb75c0b76966739ccbc356f08b125b8a29e62dc2c06e1"

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
