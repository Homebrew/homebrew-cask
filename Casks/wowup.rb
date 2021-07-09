cask "wowup" do
  version "2.4.2"
  sha256 "91dc40b56d1d4a43fb61ebf498a772b89334d4b682a86b4f18b2e5a9d8f5463c"

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
