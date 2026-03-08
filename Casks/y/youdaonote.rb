cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.40"
  sha256 arm:   "f644fbc449a48c6b8cac323850bd25d579a8e06833ec0e175a28002dee80a1cb",
         intel: "aef2a1e33ac372a0380cd46dbc1afd4f40be9947c54a1452c9a7a9fd27bcef22"

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
