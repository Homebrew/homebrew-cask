cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.2.1"
  sha256 arm:   "cfdc4be00eb316f408dbbea2eaa25c0c54c04185f6427d8a492c1371c0ff8087",
         intel: "bdf48dd5a82159e78910af78ba87d3495ef4ea2ad65af700970d48c593a47d01"

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
