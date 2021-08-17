cask "yuque" do
  version "0.9.14"
  sha256 "d0b1ca53c13e248b956c76a11d05710f177b9719d0fcc333d2600520f090e1b0"

  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  livecheck do
    url "https://www.yuque.com/yuque/yuque-desktop/changelog"
    regex(/下载地址(\d+(?:\.\d+)*)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Saved Application State/com.yuque.app.savedState",
    "~/Library/Preferences/com.yuque.app.plist",
  ]
end
