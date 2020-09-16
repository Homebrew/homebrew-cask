cask "youdaodict" do
  version "2.8.1"
  sha256 "33b9f0c7aca780a454151d454bf99ab2b33f308bf6e98bfdd9cc0ea2a4d389ad"

  url "http://codown.youdao.com/cidian/download/MacDict.dmg"
  appcast "https://cidian.youdao.com/index-mac.html"
  name "YoudaoDict"
  name "网易有道词典"
  homepage "https://cidian.youdao.com/index-mac.html"

  app "网易有道词典.app"

  zap trash: [
    "~/Library/Application Support/com.youdao.YoudaoDict",
    "~/Library/Cookies/com.youdao.YoudaoDict.binarycookies",
    "~/Library/Preferences/com.youdao.YoudaoDict.plist",
    "~/Library/com.youdao.YoudaoDict",
  ]
end
