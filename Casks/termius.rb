cask "termius" do
  version "7.1.0"
  sha256 "d7c29fbc5849aa290b659f3c92169988fd84e0b24aaae1b19238d1f5ebd0d82b"

  # s3.amazonaws.com/termius.desktop.autoupdate/mac/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/Termius.dmg"
  appcast "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/latest-mac.yml"
  name "Termius"
  desc "Cross-platform SSH client"
  homepage "https://www.termius.com/"

  auto_updates true

  app "Termius.app"

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/Termius",
    "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
    "/Library/Preferences/com.termius-dmg.mac.plist",
    "~/Library/Logs/Termius",
  ]
end
