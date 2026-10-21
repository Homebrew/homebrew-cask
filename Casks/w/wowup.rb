cask "wowup" do
  arch arm: "-arm64"

  version "2.24.1"
  sha256 arm:   "8187c735d0f761b501f0066eee425ffd9ccc9831a40f05208f89425c7070707e",
         intel: "a93206e54f3e355100e24d272882f15bf33615387e05534fe5bbc4fe7b83ade5"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg"
  name "WowUp"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp.app"

  uninstall quit: "io.wowup.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved Application State/io.wowup.jliddev.savedState",
  ]
end
