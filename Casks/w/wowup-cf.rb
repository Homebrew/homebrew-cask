cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.25.4"
  sha256 arm:   "2cd374616d6edd3f0ed38fbe73ad6f480801aa8718732dc6a23d57bfd8dc28cd",
         intel: "29af2e764b0b8da2f3e2e0c9aae819da5ea2f8f20cd3c35a73dc4e4573f6bf34"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
