cask "zettlr" do
  version "1.7.4"
  sha256 "4114fce54dd32bef8d0c64bd13d54269a59ec4b5f8b6c7c9e3f42679faa837ed"

  # github.com/Zettlr/Zettlr/ was verified as official when first introduced to the cask
  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}.dmg"
  appcast "https://github.com/Zettlr/Zettlr/releases.atom"
  name "Zettlr"
  homepage "https://www.zettlr.com/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
