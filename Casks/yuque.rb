cask "yuque" do
  version "0.9.20"
  sha256 "b9835d76b91f1f09e533c23edc7be9f845838cbd835b15c5992455c85e641de6"

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
