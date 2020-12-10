cask "termius" do
  version "7.2.1"
  sha256 :no_check

  # s3.amazonaws.com/termius.desktop.autoupdate/mac/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/Termius.dmg"
  appcast "https://s3.amazonaws.com/termius.desktop.autoupdate/mac/latest-mac.yml"
  name "Termius"
  desc "Cross-platform SSH client"
  homepage "https://www.termius.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Termius.app"

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/Termius",
    "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
    "/Library/Preferences/com.termius-dmg.mac.plist",
    "~/Library/Logs/Termius",
  ]
end
