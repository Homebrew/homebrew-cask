cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.2"
  sha256 arm:   "a906fdf951c4aab22be31eff6d209599bffb2f3c846b6a0f5e5874b3b5e286b5",
         intel: "0e982186d055b43847018110c92975d096b6df549deda69bf6115bfdc7dee2eb"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "有道云笔记.app"

  zap trash: [
    "~/Library/Containers/com.youdao.note.YoudaoNoteMac",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
  ]
end
