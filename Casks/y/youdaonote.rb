cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.81"
  sha256 arm:   "8fd7681156693e19eff489b2ef65fabe48a19839e04f3d8d8a972e437a6659c7",
         intel: "c5d8b8aca8dd9619d079651a1cc9156611daaec572e843a10a66a3026480edc4"

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
