cask "typora" do
  version "1.13.8"
  sha256 "bea6c1d7c8ab138634674e4c96c077e7a0db140da725d9b8294e446789d81ac7"

  url "https://downloads.typora.io/mac/Typora-#{version}.dmg"
  name "Typora"
  desc "Configurable document editor that supports Markdown"
  homepage "https://typora.io/"

  livecheck do
    url "https://typora.io/releases/macos.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "typora@dev"
  depends_on macos: :big_sur

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
