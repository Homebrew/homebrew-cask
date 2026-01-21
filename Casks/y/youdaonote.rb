cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.30"
  sha256 arm:   "bd594c1318f01489124d7a1ccf30d776d6bac71b0408ecaac9cc0d7706bbfb80",
         intel: "b6fe9f54824587c923ae83a0622e018f7fdcf659e43e0a1599d177e5e2d8163c"

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
