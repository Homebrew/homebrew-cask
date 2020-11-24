cask "youdaodict" do
  version "2.8.3"
  sha256 "6bd166fd28ffe4a3d8237be4fbdc4cb1b4dad1f308a4d122112fee3cd58ee53b"

  url "https://codown.youdao.com/cidian/download/MacDict.dmg"
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
