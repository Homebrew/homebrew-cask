cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.1.1"
  sha256 arm:   "536599c4ee7cf4ef192f4009b1ef271f2a5bc88bf0c9cd766b5131236ed126b7",
         intel: "447597fc648d0a1c84a0e70c934cca0e18e489992d50d87ab989b4277ca9807d"

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
