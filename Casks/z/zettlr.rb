cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "9d74c0ad9ab538476003ad0ccbbfe3b0bf9ae665722c4d239792721115110fd4",
         intel: "908b27944eef7f1c013aed596503518f32aa0db272def755df81dc62f2644245"

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
