cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.71"
  sha256 arm:   "b02b6526aa6321d51410ebac604aee0c8f4d4689008c1ca64d6de8ccefc4959f",
         intel: "7bf9871056bee9fbb1b564afa4536adf7aee4045205891e3b3a498de426a1c03"

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
