cask "wowup" do
  version "2.8.3"
  sha256 "3e6baf5aafacbbe69b484af26fa6c426ec326a527243807db66d24f6ec354dae"

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
