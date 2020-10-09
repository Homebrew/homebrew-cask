cask "yuque" do
  version "0.3.11"
  sha256 "dc478f867ee094f4b2f530a716258941a6c79172247a32fa5ad3063b80eb9782"

  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg"
  appcast "https://www.yuque.com/install/desktop"
  name "Yuque"
  name "语雀"
  homepage "https://www.yuque.com/"

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Saved Application State/com.yuque.app.savedState",
    "~/Library/Preferences/com.yuque.app.plist"
  ]
end
