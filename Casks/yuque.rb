cask "yuque" do
  version "0.4.9"
  sha256 "01b3ae762420b50b9894cd7863c14f881fcb18fef08d25b8a22775ee025964de"

  # app.nlark.com/yuque-desktop/ was verified as official when first introduced to the cask
  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg"
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
