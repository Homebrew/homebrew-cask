cask "yuque" do
  version "0.7.10"
  sha256 "694399bcec08ba837198a1f5028332dabf401030e12471ae0432d0d3c8b5feb5"

  url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  livecheck do
    url "https://www.yuque.com/yuque/help/changelog"
    strategy :page_match
    regex(/下载地址(\d+(?:\.\d+)*)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Saved Application State/com.yuque.app.savedState",
    "~/Library/Preferences/com.yuque.app.plist",
  ]
end
