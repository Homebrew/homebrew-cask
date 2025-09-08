cask "zalo" do
  version "25.8.3"
  sha256 "432cf162995e33c083ff09869b92a6b28b05c0751244e1807d4fc0c0720c1546"

  url "https://res-zaloapp-aka.zdn.vn/mac/ZaloSetup-universal-#{version}.dmg",
      verified: "res-zaloapp-aka.zdn.vn/mac/"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
