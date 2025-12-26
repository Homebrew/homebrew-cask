cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "db9328d0e8b123b46cc67bd4b987abad7e015558f938ccdfeead552e938ae536",
         intel: "ce930f20f69a7abdcc9a31f7e048f0bb71fe801480fc87676ed9f371f9400849"

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
