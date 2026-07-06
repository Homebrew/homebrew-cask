cask "zalo" do
  version "26.6.20"
  sha256 "a819371c117bfae84ca56724ff92fe61d469f2dafd529c94b3344ff87d38650c"

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
