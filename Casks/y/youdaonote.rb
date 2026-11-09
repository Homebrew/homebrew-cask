cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.100"
  sha256 arm:   "3d961410ec816147a0846347390e92c8195153a12a029fae613e418029e56893",
         intel: "967255a39f4cd0f53b01538be1a092032b7364fd5200cc304157ce14d1a45cd4"

  url "https://artifact.lx.netease.com/download/ynote-electron/%E6%9C%89%E9%81%93%E4%BA%91%E7%AC%94%E8%AE%B0-#{version}#{arch}.dmg",
      user_agent: :fake
  name "youdaonote"
  name "有道云笔记"
  desc "Multi-platform note application"
  homepage "https://note.youdao.com/"

  livecheck do
    url "https://artifact.lx.netease.com/download/ynote-electron/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "有道云笔记.app"

  zap trash: [
    "~/Library/Containers/com.youdao.note.YoudaoNoteMac",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
  ]
end
