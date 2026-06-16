cask "zalo" do
  version "26.6.11"
  sha256 "738c87d768da31184c007cdcb35dfeffdecb2b170c2a773d20fa07d8b507be71"

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
