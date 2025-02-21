cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "9144639ffa889ba53c1583a1abd118a9a46635498e750abf02bd75955051c598",
         intel: "93e4b02df5d2270da99659ed0536ed03513dcc3378b1ea41b38c10778d0e2e2e"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

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
