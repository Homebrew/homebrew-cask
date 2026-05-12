cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.52"
  sha256 arm:   "54edfd6d56f840ae3db25b472eafb28edeb212be5b3e569eaa0c56951b695ebb",
         intel: "100a6e1050e3a32a08dd83f5f2819d86ae3d77d80ec79d65c7d1e338d476d90b"

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

  depends_on :macos

  app "有道云笔记.app"

  zap trash: [
    "~/Library/Containers/com.youdao.note.YoudaoNoteMac",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
  ]
end
