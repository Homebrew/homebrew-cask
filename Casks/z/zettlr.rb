cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "ace941ab6763d92c1db3af28b94b552db7a59e693c4adb176616cccf3c6df333",
         intel: "a48edaa8947fb1f662e68f077012aa6d85f57af03a09914f16720ac5e0598077"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  depends_on macos: ">= :big_sur"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
