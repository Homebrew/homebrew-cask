cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "33e5b028f26991ed3ed006275e4264cd077ef1799f3c24cb29b1af70a1da1959",
         intel: "7a9b9004d499e4ca7defcb478bd80695ef8c57b3ba9644e55f8daa05d103d58d"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl2",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
