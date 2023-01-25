cask "wowup" do
  arch arm: "-arm64"

  version "2.9.2"
  sha256 arm:   "312157faa1d876a16b537f1114ff20f5832bfcf02ec39561c3d623c23d965a4c",
         intel: "17ad055005b71c2bd4d1563566b9771d2abab62ec019b6b36d2888991b19b6be"

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
