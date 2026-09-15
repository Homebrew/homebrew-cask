cask "wowup" do
  arch arm: "-arm64"

  version "2.23.1"
  sha256 arm:   "7c82a0a144f8d8ebd31be1883de93110ec4be524e572ee718de32a21dd441719",
         intel: "dbe96e4b02ba559d4f55cf095414a7f8b5bd29b0e802050ddee48d46180960ca"

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
