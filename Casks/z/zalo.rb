cask "zalo" do
  version "26.10.10"
  sha256 "04052d973fc1fe0028b5e192cbe727bd0f7c51c8d1434574f91da8761508afce"

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
