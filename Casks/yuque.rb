cask "yuque" do
  version "0.6.15"
  sha256 "3ed483c0c19a09c67f751de2d8d1436cadbf6bbb2e6c0f88152e860e9ad23ac5"

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
