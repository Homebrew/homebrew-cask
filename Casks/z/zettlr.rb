cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "e959763299d1798c0caa8e72797748feec379dac4ac0569be44c0ae1f5b0dc3d",
         intel: "ed7d8ab83547e63e8e9bfa32cfe1f8ddb6bc08f8ce12706148b69dcaf6843848"

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
