cask "zettlr" do
  version "1.8.3"
  sha256 "cd6dab2a7f58cdd8747db52cb0db4cafaa3f43adadf4a0a4d1267a8cdcb75635"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  appcast "https://github.com/Zettlr/Zettlr/releases.atom"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
