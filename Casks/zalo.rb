cask "zalo" do
  version "21.10.1"
  sha256 "4a5184870c0123bed453de5e28cd361ae7912eeac8f4283af320ae5ce676993f"

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
