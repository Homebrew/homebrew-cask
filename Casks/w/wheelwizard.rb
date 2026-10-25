cask "wheelwizard" do
  arch arm: "arm64", intel: "intel"

  version "2.6.3"
  sha256 arm:   "f84fc0bf19aca04178bfca8090ca17c7d4bb1cbc17adf8ae495b5a9663f8bf9d",
         intel: "ba6480e7a201b7ed3a82ad07003880ebe6b4eb914eb648e43395ae4ecd5db3de"

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
