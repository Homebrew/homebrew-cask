cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.60"
  sha256 arm:   "e9fc13259dd3a9a04c9bf7b903bbfc7434c7a554ee40b888659f356b411a0f27",
         intel: "965f2a549c441ef382ca16da6dd664c7b0fd3050b3103965b7119b923b240fb7"

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
