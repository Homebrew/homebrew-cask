cask "zalo" do
  version "26.8.20"
  sha256 "4d1c4637c2e551a104507d76225f70920fc12f22b6dfe6da338e8549eb002a79"

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
