cask "youdaodict" do
  version "9.0.6,916"
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

  app "网易有道词典.app"

  zap trash: [
    "~/Library/Application Support/com.youdao.YoudaoDict",
    "~/Library/Cookies/com.youdao.YoudaoDict.binarycookies",
    "~/Library/Preferences/com.youdao.YoudaoDict.plist",
    "~/Library/com.youdao.YoudaoDict",
  ]
end
