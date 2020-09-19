cask "youdaonote" do
  version "3.6.3"
  sha256 "91479a9a5342397ae1cfc46c8e01d274842df2505e5de85879f08a841222b4dd"

  # download.ydstatic.com/notewebsite/downloads/ was verified as official when first introduced to the cask
  url "https://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg"
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
