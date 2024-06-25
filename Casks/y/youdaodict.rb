cask "youdaodict" do
  version "10.2.8,987"
  sha256 :no_check

  url "https://codown.youdao.com/cidian/download/MacDict.dmg"
  name "YoudaoDict"
  name "网易有道词典"
  desc "Youdao Dictionary"
  homepage "https://cidian.youdao.com/index-mac.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "网易有道翻译.app"

  zap trash: [
    "~/Library/Application Scripts/com.youdao.YoudaoDict",
    "~/Library/Application Support/com.youdao.YoudaoDict",
    "~/Library/com.youdao.YoudaoDict",
    "~/Library/Containers/com.youdao.YoudaoDict",
    "~/Library/Cookies/com.youdao.YoudaoDict.binarycookies",
    "~/Library/Preferences/com.youdao.YoudaoDict.plist",
    "~/Library/Saved Application State/com.youdao.YoudaoDict.savedState",
  ]
end
