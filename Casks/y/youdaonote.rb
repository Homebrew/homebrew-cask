cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.91"
  sha256 arm:   "4792a4bc20d78fbce822b0a611bcdd4aa950d8f2482327052c3cba198d73cbae",
         intel: "8af2b84c241b5f5a1b2902d4cbbf4a7bb0a6b6cafef188b64d02bb1dc66adc0b"

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
