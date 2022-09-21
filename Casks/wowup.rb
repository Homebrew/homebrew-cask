cask "wowup" do
  arch arm: "-arm64"

  version "2.9.0"
  sha256 arm:   "e966a7a245f00b3dc81613c276d8da2bd7dd48721b114d4e43ee394e5fd35330",
         intel: "947dcb7ac34c2a79ce8d61a8a519ce70b707f95388b3cd41c0d3b698360ac229"

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
