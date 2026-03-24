cask "zalo" do
  version "26.3.10"
  sha256 "14a5d99df8ed9e000b8da865782691b56fc4fbc978500e95c24c81f3c3071eb4"

  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-universal-#{version}.dmg",
      verified: "res-zaloapp-aka.zdn.vn/mac/"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
