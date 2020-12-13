cask "typora" do
  version "0.9.9.36.1"
  sha256 "702c31eb18dedfc115e81c2bd088b65c2cc69dfe5b18c5bbb22a19bf2d76d1a0"

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast "https://www.typora.io/download/dev_update.xml"
  name "Typora"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

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
