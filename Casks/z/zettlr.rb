cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.4.0"
  sha256 arm:   "b9865d6cb18e55e206a2f17907fb15eb0fc55a6aeef6c6dfeb5c7c21687ddf1d",
         intel: "95e6b9e38b7246ee1f57446aa5d8115096091413cf91d2a98e4331886cb0e170"

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
