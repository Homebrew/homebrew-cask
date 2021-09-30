cask "termius" do
  version "7.21.2"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://autoupdate.termius.com/mac/Termius.dmg"
  else
    url "https://autoupdate.termius.com/mac-arm64/Termius.dmg"
  end

  name "Termius"
  desc "SSH client"
  homepage "https://www.termius.com/"

  livecheck do
    url "https://autoupdate.termius.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Termius.app"

  zap trash: [
    "/Library/Preferences/com.termius-dmg.mac.plist",
    "~/.termius",
    "~/Library/Application Support/Termius",
    "~/Library/Logs/Termius",
    "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
  ]
end
