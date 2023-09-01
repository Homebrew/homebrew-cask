cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "dfd83093d395a0d6a4f4efe096b08b5ac26c76cea9195776b833474ad3f34839",
         intel: "cc1fcdd35846023ae2e2baca85bf5c67e1bb57e35347e12268e4cfd382a79047"

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
