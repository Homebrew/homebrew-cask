cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.23.0"
  sha256 arm:   "b6fd067e604196f637fcfc3282bb1c40a9290da1f1a3603e02f973a6cabbe396",
         intel: "9c03b5cfea84e08996cdfde8f98632fef844898d07ffd8bc36f64b2281a3d03a"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg",
      verified: "github.com/WowUp/WowUp.CF/"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :big_sur

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
