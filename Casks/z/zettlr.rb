cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.3.1"
  sha256 arm:   "76dabb6e687f21822e8bfaae7f9a925588bb0903b204b1b21c33f696425cc9b1",
         intel: "1866db412a45fde1a7a38ad3274d5f0d98fe91ec624565402ae4d53d20b53b4d"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  depends_on macos: ">= :monterey"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
