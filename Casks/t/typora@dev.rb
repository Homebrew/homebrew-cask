cask "typora@dev" do
  version "1.10.2"
  sha256 "362870dbf1d62b14acd46cfd39385ae33ed9e110344243d06d28b3374e45d2c6"

  language "zh-Hans-CN" do # use official Chinese mirror
    url "https://download2.typoraio.cn/mac/Typora-#{version}-dev.dmg",
        verified: "typoraio.cn/"
  end
  language "en", default: true do
    url "https://download.typora.io/mac/Typora-#{version}-dev.dmg"
  end

  name "typora-dev"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

  livecheck do
    url "https://typora.io/releases/dev_macos.xml"
    regex(/Typora[._-]v?(\d+(?:\.\d+)+)(?:-dev)\.dmg/i)
    strategy :sparkle do |item|
      item.url[regex, 1]
    end
  end

  auto_updates true
  conflicts_with cask: "typora"
  depends_on macos: ">= :big_sur"

  app "Typora.app"

  zap trash: [
    "~/Library/Application Support/abnerworks.Typora",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl*",
    "~/Library/Application Support/Typora",
    "~/Library/Caches/abnerworks.Typora",
    "~/Library/Cookies/abnerworks.Typora.binarycookies",
    "~/Library/Preferences/abnerworks.Typora.plist",
    "~/Library/Saved Application State/abnerworks.Typora.savedState",
    "~/Library/WebKit/abnerworks.Typora",
  ]
end
