cask "wowup" do
  arch arm: "-arm64"

  version "2.20.0"
  sha256 arm:   "3da6069b9dec9478ccaf6bf3ecb0363c4dbb8106c02f96c295d1f263a5dc18ae",
         intel: "6fae75ce3ecfccfe2ea4ed74ced97da06b10abbca6e79c0a4f61a12592953ed7"

  url "https://github.com/WowUp/WowUp/releases/download/v#{version}/WowUp-#{version}#{arch}.dmg",
      verified: "github.com/WowUp/WowUp/"
  name "WowUp"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "WowUp.app"

  uninstall quit: "io.wowup.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp",
    "~/Library/Logs/WowUp",
    "~/Library/Preferences/io.wowup.jliddev.plist",
    "~/Library/Saved Application State/io.wowup.jliddev.savedState",
  ]
end
