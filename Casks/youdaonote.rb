cask "youdaonote" do
  version "3.6.3"
  sha256 :no_check

  url "https://download.ydstatic.com/notewebsite/downloads/YoudaoNote.dmg",
      verified: "download.ydstatic.com/notewebsite/downloads/"
  name "YoudaoNote"
  name "有道云笔记"
  desc "Multi-platform note application"
  homepage "https://note.youdao.com/"

  livecheck do
    url "https://note.youdao.com/update/updateConfig.json"
    strategy :page_match do |page|
      JSON.parse(page)["macNote"]["version"]
    end
  end

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
