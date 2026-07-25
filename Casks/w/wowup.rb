cask "wowup" do
  arch arm: "-arm64"

  version "2.23.0"
  sha256 arm:   "bc331211b99bccc0bb802e76f8d69ef1ae0ad531b022b4424a6219d5bd5c295b",
         intel: "180b2d9dead8ace0ffee4f65aa6b3e0c2f2fa91a82b21f07eebfccd793f816ed"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg",
      verified: "github.com/WowUp/WowUp/"
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
