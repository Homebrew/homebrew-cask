cask "zettlr" do
  version "1.8.2"
  sha256 "0d1342c89acf6061287680941d5ac0e482dccef3028e6303bda1e9bd80b7d034"

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
