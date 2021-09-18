cask "yuque" do
  version "0.9.29"
  sha256 "6ca1e4fc924b82e8cdd0e127e64ff25adeede6cb65089efaf6921b8cdf463136"

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
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
