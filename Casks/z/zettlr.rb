cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "0506b7743bd3f35d1c5cdc83d7de6c7cb91188b19152dee32447f0d6accad420",
         intel: "e3d6a102280ab405661fc4bd7088b1d761ab19f97e479d44c3ce6ddd12bb88ab"

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
