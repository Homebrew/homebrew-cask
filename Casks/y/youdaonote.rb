cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.81"
  sha256 arm:   "0b5840de218a2bf2573d2ef64d2c0745efbd32782274cf4dd53b45c9f19ff6dd",
         intel: "f021a98e0c52d0d0683228d8b1c7983c5511c2e5352d11e63cc5dd886a585433"

  url "https://artifact.lx.netease.com/download/ynote-electron/%E6%9C%89%E9%81%93%E4%BA%91%E7%AC%94%E8%AE%B0-#{version}#{arch}.dmg",
      user_agent: :fake,
      verified:   "artifact.lx.netease.com/download/ynote-electron/"
  name "youdaonote"
  name "有道云笔记"
  desc "Multi-platform note application"
  homepage "https://note.youdao.com/"

  livecheck do
    url "https://artifact.lx.netease.com/download/ynote-electron/latest-mac.yml"
    strategy :electron_builder
  end

  app "有道云笔记.app"

  zap trash: [
    "~/Library/Containers/com.youdao.note.YoudaoNoteMac",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
  ]
end
