cask "zettlr" do
  version "1.7.5"
  sha256 "013ba4ce24e5ebac28a5af98db4c9b5d0c011c2a74d3f7b2eb5f0e969bf7ea59"

  # github.com/Zettlr/Zettlr/ was verified as official when first introduced to the cask
  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}.dmg"
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
