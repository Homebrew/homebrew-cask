cask "yuque" do
  version "0.5.19"
  sha256 "012c39a8a8b64691fcc431a2b2cb774b1d252d2a81f2169c00ce5c6c0a75da66"

  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  appcast "https://www.yuque.com/install/desktop"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Saved Application State/com.yuque.app.savedState",
    "~/Library/Preferences/com.yuque.app.plist",
  ]
end
