cask "zettlr" do
  version "1.8.4"
  sha256 "bade8469da142bfadd58b8a598eeff28f40161bf351a1c5eccc86ade826d80f6"

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
