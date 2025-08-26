cask "youdaonote" do
  arch arm: "-arm64"

  version "8.1.80"
  sha256 arm:   "ec2b8d35754ba776c94804fe5f5a71ccb48f7c1e8ff8b6f3a1b8205a934efcda",
         intel: "9e599caf171c2ff405c4928e3db1784c2329fd83f236a5602eb1aabd8de651c5"

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
