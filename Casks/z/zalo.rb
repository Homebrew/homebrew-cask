cask "zalo" do
  version "26.8.10"
  sha256 "d0a1b950c6062926b115f8a5c5b4a162bcdbfed9422180a49de3717f3c490965"

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
