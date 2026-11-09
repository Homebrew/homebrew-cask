cask "wheelwizard" do
  arch arm: "arm64", intel: "intel"

  version "2.6.4"
  sha256 arm:   "f397b6926cc1635b3a4af6b2bdc19acca2bd56e2bdc08d303d7909a5a3ca5f30",
         intel: "b5cdd91ed3ee1d2c46b1b5a5f820db247484e29b25566041e2c9413ced26f45d"

  url "https://github.com/TeamWheelWizard/WheelWizard/releases/download/v#{version}/WheelWizard-macOS#{arch}.dmg"
  name "Wheel Wizard"
  desc "Mod manager for Mario Kart Wii and Retro Rewind"
  homepage "https://github.com/TeamWheelWizard/WheelWizard"

  depends_on macos: :monterey

  app "WheelWizard.app"

  zap trash: [
    "~/.net/WheelWizard",
    "~/Library/Preferences/ga.gabema.WheelWizard.plist",
  ]
end
