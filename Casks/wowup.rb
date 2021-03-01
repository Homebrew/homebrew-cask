cask "wowup" do
  version "2.1.2"
  sha256 "d4cd653143a7d2a1578a3c09409ee369e13ca5b63a10db2790b4db08ea7a1736"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}.dmg",
      verified: "github.com/WowUp/WowUp/"
  appcast "https://github.com/WowUp/WowUp/releases.atom"
  name "WowUp"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true

  app "WowUp.app"

  uninstall quit: "io.wowup.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved Application State/io.wowup.jliddev.savedState",
  ]
end
