cask "typora" do
  version "0.11.9"
  sha256 "8ae5617c730ab2c38d722fa4275221b39d294f081e8adfc67b584dae4df9a8b4"

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  name "Typora"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

  livecheck do
    url "https://www.typora.io/download/dev_update.xml"
    strategy :page_match
    regex(/Typora-(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Typora.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl*",
    "~/Library/Application Support/Typora",
    "~/Library/Application Support/abnerworks.Typora",
    "~/Library/Caches/abnerworks.Typora",
    "~/Library/Cookies/abnerworks.Typora.binarycookies",
    "~/Library/Preferences/abnerworks.Typora.plist",
    "~/Library/Saved Application State/abnerworks.Typora.savedState",
    "~/Library/WebKit/abnerworks.Typora",
  ]
end
