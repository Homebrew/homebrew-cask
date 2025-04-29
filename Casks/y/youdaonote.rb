cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.20"
  sha256 arm:   "7978eb65bd1e5591f3de03f1c21139fa54225bb03bb50a5d70e6f84fbf371038",
         intel: "019c5de0a20ce16ea495f6f50358ee64950374f503f416ad8edaa74a48b16d68"

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
