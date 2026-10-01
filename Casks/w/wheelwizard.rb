cask "wheelwizard" do
  arch arm: "arm64", intel: "intel"

  version "2.5.9"
  sha256 arm:   "155adcda68a8b2453e93410275ae5ae1edc0cbbcb8085ba70d8b2fd425d928e4",
         intel: "8b5d5f3f8b8cc37533c027e38c72a9f063a3b4b781bc743c3b4e24433cd83ee8"

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
