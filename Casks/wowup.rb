cask "wowup" do
  arch arm: "-arm64"

  version "2.9.1"
  sha256 arm:   "13485858eec10f197f0351afef5b10e40e7010c05f93a2f229a4724b2d12038f",
         intel: "6d02eab120457451dac424026a61df5e58846f3411ea8b94b6fd0ebc8af8f85c"

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
