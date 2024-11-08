cask "zalo" do
  version "24.11.1"
  sha256 "ae751c13b88975928ac734e785c2f85b458d3d16357bdf2d006ab95747f099df"

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
