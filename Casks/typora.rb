cask "typora" do
  version "0.11.4"
  sha256 "316a7964aca30fce7ee6717989c6808d2ac8e79e32787c09594a805605ed4a38"

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
