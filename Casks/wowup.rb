cask "wowup" do
  arch arm: "-arm64"

  version "2.9.4"
  sha256 arm:   "ac0f8e537ac4bf67bcc7a1c4581401050175264a06490ac891a0dbefb29b5754",
         intel: "ee6c09c2055c3faea2196a0a117f49c3258737f962ed62660485472f0a3e0328"

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
