cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.0"
  sha256 arm:   "7a277644be6b0a02381080de27258d847cbd3aab83c0e0ed5716e05b57aaa376",
         intel: "68bc0715bb9dde63eaa0fc53edbd52bd5ec7f6c2a2f08839c6e8da50698326a7"

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
