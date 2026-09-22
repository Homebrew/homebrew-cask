cask "zalo" do
  version "26.9.10"
  sha256 "adbbfa1b51ea69a5238d373a1e3d3d81073f30f0e59fe4126878f1046b0698bf"

  url "https://res-download-pc.zadn.vn/mac/ZaloSetup-universal-#{version}.dmg"
  name "Zalo"
  desc "Messaging and calling application"
  homepage "https://zalo.me/"

  livecheck do
    url "https://zalo.me/download/zalo-pc"
    strategy :header_match
  end

  depends_on :macos

  app "Zalo.app"

  zap trash: [
    "~/Library/Application Support/Zalo",
    "~/Library/Application Support/ZaloPC",
    "~/Library/Preferences/com.vng.zalo.*.plist",
    "~/Library/Saved Application State/com.vng.zalo.savedState",
  ]
end
