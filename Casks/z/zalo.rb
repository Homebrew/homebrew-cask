cask "zalo" do
  version "23.8.4"
  sha256 "74f6488782d71ba15d473828b83f21655e881a6594889672300cc8ac3f776753"

  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-universal-#{version}.dmg",
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
