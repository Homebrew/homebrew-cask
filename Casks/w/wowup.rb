cask "wowup" do
  arch arm: "-arm64"

  version "2.12.0"
  sha256 arm:   "689befa5cb69078f0d15e3998ac5ecefb985530b004f9d7c1a1086cff301d8b2",
         intel: "ef7f1f12ebb01ed0e69a710b2beb5d0eed8470cf62fe28ecbfdd31f4ef62020c"

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
