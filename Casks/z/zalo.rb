cask "zalo" do
  version "26.6.10"
  sha256 "1f882b03f2c75d18b9de8f7f3e167b3a6ed039db5d4774973df27f28049bb150"

  url "https://res-download-pc.zadn.vn/mac/ZaloSetup-universal-#{version}.dmg",
      verified: "res-download-pc.zadn.vn/mac/"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on macos: :big_sur

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
