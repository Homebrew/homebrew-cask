cask "wowup" do
  version "2.0.3"
  sha256 "38825a0192726c22e1412cc3d3c31128044a4021f0eb5acae5424bf35e0234c0"

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
