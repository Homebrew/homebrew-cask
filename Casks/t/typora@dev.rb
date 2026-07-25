cask "typora@dev" do
  version "1.14.5-dev"
  sha256 "ad1d70de84e1be2c4dd49a58c216de6683cff71b77e5ef9403c470360e6298a8"

  language "zh-Hans-CN" do # use official Chinese mirror
    url "https://downloads.typoraio.cn/mac/Typora-#{version}.dmg",
        verified: "typoraio.cn/"

    "zh-Hans-CN"
  end
  language "en", default: true do
    url "https://downloads.typora.io/mac/Typora-#{version}.dmg"

    "en-US"
  end

  name "Typora"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

  livecheck do
    url "https://typora.io/releases/dev_macos.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "typora"
  depends_on macos: :big_sur

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
