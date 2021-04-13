cask "wowup" do
  version "2.1.3"
  sha256 "ab9373b5f8a23882b8dfcc8591e4db20da255e4a0239c94945bc587a8dcba6e2"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}.dmg",
      verified: "github.com/WowUp/WowUp/"
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
