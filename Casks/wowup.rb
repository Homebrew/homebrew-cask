cask "wowup" do
  arch arm: "-arm64"

  version "2.8.3"
  sha256 arm:   "5aca79b30fa90307c6d78b45207b1b7f277798596b7f94fd9464dd8ed0c9a6d5",
         intel: "3e6baf5aafacbbe69b484af26fa6c426ec326a527243807db66d24f6ec354dae"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg",
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
