cask "typora" do
  version "1.3.7"
  sha256 "88731f0eace5784915a9e221724eca5c7460076d43290dd3444e8ad1c5e5ba5e"

  url "https://download.typora.io/mac/Typora-#{version}.dmg"
  name "Typora"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

  livecheck do
    url "https://www.typora.io/download/dev_update.xml"
    regex(/Typora-(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
