cask "typora" do
  version "1.14.15"
  sha256 "6f376ef9a61f06470650d24c2e6478947a9a5dc4e30fe641ae266b06bd892451"

  language "zh-Hans-CN" do # use official Chinese mirror
    url "https://downloads.typoraio.cn/mac/Typora-#{version}.dmg"

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
    url "https://typora.io/releases/macos.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "typora@dev"
  depends_on macos: :monterey

  app "Typora.app"

  zap trash: [
    "~/Library/Application Support/abnerworks.Typora",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl*",
    "~/Library/Application Support/Typora",
    "~/Library/Caches/abnerworks.Typora",
    "~/Library/Cookies/abnerworks.Typora.binarycookies",
    "~/Library/HTTPStorages/abnerworks.Typora",
    "~/Library/Preferences/abnerworks.Typora.plist",
    "~/Library/Saved Application State/abnerworks.Typora.savedState",
    "~/Library/WebKit/abnerworks.Typora",
  ]
end
