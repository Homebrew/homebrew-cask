cask "wowup" do
  version "2.0.1"
  sha256 "676da284e9430abb266076510bc10294516c9a05d81e100f546c281173625c36"

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
