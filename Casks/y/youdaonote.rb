cask "youdaonote" do
  arch arm: "-arm64"

  version "8.2.92"
  sha256 arm:   "1404cbed31254d0f707abe0a5241af5dad83afc55d9244c8f34719175b314606",
         intel: "b724b07ec48fc981da2f97364381b2e53dc12d7194b5438ad496108bc6f6a1b1"

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
