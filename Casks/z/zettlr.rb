cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.2.3"
  sha256 arm:   "1f75677a6a68f87b13e5d2cdfc31a5901f65401d8065ee3657cf564c4231c2ff",
         intel: "00d3a137f21bf8f49a59f1c530ae587ccbdc79949ebb7d699852a7a15fe95a96"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :catalina"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
