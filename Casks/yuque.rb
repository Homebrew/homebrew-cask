cask "yuque" do
  version "0.3.13"
  sha256 "b8051a8aa9b96d662657de9af14901187e8af0d04807a19be7327b8a90825f4c"

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
