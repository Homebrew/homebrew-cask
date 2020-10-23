cask "termius" do
  version "7.0.1"
  sha256 "756a2ed1f971bc07b91352339a88a0fe9e0d26bab3dba6f2fa30ee0931135555"

  # s3.amazonaws.com/termius.desktop.autoupdate/mac/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/Termius.dmg"
  appcast "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/latest-mac.yml"
  name "Termius"
  desc "Cross-platform SSH client"
  homepage "https://www.termius.com/"

  app "Termius.app"

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/Termius",
    "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
    "/Library/Preferences/com.termius-dmg.mac.plist",
    "~/Library/Logs/Termius",
  ]
end
