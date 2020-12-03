cask "wowup" do
  version "2.0.2"
  sha256 "3cb61c51a387ae6ba3a5088b5842455dc6ddcb4a712321c249153f43e503c813"

  # github.com/WowUp/WowUp/ was verified as official when first introduced to the cask
  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}.dmg"
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
