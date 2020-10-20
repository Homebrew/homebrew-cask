cask "termius" do
  version "6.5.1"
  sha256 "a31be9d7efe42313a217da8239ae1bfe45fb6bc0d19e4854f1a1b59fda1ac038"

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
