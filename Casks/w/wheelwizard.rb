cask "wheelwizard" do
  arch arm: "arm64", intel: "intel"

  version "2.6.2"
  sha256 arm:   "88789d66b5fa46472e1a29c01cfc6416a03426470913709b161bdb9c3811e8fc",
         intel: "6063df47f927afbe4b42bfbb79d503f7fdbb000fd4ae83046e5574ed2d942ef1"

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
