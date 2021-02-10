cask "youdaonote" do
  version "3.6.3,6382"
  sha256 :no_check

  url "https://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg",
      verified: "download.ydstatic.com/notewebsite/downloads/"
  appcast "https://note.youdao.com/update/updateConfig.json"
  name "YoudaoNote"
  name "有道云笔记"
  desc "Multi-platform note application"
  homepage "https://note.youdao.com/"

  app "YoudaoNote.app"

  zap trash: [
    "~/Library/Caches/com.crashlytics.data/com.youdao.YoudaoDict",
    "~/Library/Caches/com.youdao.YoudaoDict",
    "~/Library/Caches/io.fabric.sdk.mac.data/com.youdao.YoudaoDict",
    "~/Library/Containers/com.youdao.note.YoudaoNoteMac",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
    "~/Library/com.youdao.YoudaoDict",
  ]
end
