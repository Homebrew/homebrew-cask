cask "wowup" do
  arch arm: "-arm64"

  version "2.9.3"
  sha256 arm:   "5232fd44cdf080e723acd7a75d15950dbd1fa9a4b50ce974e0020969115e5046",
         intel: "c0bb706a8c62c07592fe0024e55c2a8d8b1eda8da8da00bd014a705f612aeb46"

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
