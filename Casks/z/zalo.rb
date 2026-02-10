cask "zalo" do
  version "26.1.20"
  sha256 "3e9f64585ff45cede2be62fc6b05324c3861be407e0831fc63897f60a272585c"

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
