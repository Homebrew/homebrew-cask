cask "wowup" do
  arch arm: "-arm64"

  version "2.25.5"
  sha256 arm:   "fdc68f2779273f1eca517988453c95662c54ccb9bf7f036801fbf41c827260e6",
         intel: "3b9f3aad90be118d5ca7046f0da2c595aef74b257fca7725198c695675283866"

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
