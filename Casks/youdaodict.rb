cask "youdaodict" do
  version "2.8.3,189"
  sha256 :no_check

  url "https://codown.youdao.com/cidian/download/MacDict.dmg"
  appcast "https://cidian.youdao.com/index-mac.html"
  name "YoudaoDict"
  name "网易有道词典"
  homepage "https://cidian.youdao.com/index-mac.html"

  depends_on macos: ">= :mojave"

  app "网易有道词典.app"

  zap trash: [
    "~/Library/Application Support/com.youdao.YoudaoDict",
    "~/Library/Cookies/com.youdao.YoudaoDict.binarycookies",
    "~/Library/Preferences/com.youdao.YoudaoDict.plist",
    "~/Library/com.youdao.YoudaoDict",
  ]
end
