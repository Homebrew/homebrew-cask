cask "youdaonote" do
  version "7.2.6"
  sha256 "b10e214a4e4752a364c7ff0b47bb332f2be4af2d2bae9e17fdba1d5ff0af65e2"

  url "https://artifact.lx.netease.com/download/ynote-electron/%E6%9C%89%E9%81%93%E4%BA%91%E7%AC%94%E8%AE%B0-#{version}.zip",
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
