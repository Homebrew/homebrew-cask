cask "wowup" do
  arch arm: "-arm64"

  version "2.22.0"
  sha256 arm:   "9c8afe0c233f2d100f8b4ffd0ba92aa28aa4a4fbdd171b12911e6739fdc83609",
         intel: "4bfe2c0dcae893faa685fa44621f37183dcd67a83b76dd5cf15ff8f32ff4ef3e"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg",
      verified: "github.com/WowUp/WowUp/"
  name "WowUp"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "WowUp.app"

  uninstall quit: "io.wowup.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved Application State/io.wowup.jliddev.savedState",
  ]
end
