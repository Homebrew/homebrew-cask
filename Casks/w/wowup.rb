cask "wowup" do
  arch arm: "-arm64"

  version "2.25.4"
  sha256 arm:   "245306f7afd4b5c4cc4af99f43af53b8f118106b13359b817d02df31f91188ae",
         intel: "6d90b5f955f8654824ffaa54f13a55a0348324aa1b480c65441bda7364d4cfe5"

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
