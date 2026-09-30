cask "wheelwizard" do
  arch arm: "arm64", intel: "intel"

  version "2.5.8"
  sha256 arm:   "4a48eeec4b31cce0a203352c8dd7ee989a1c1e23508949b707eac69171f28d5b",
         intel: "fb10db3efd25196346504434fc3e6a74b68717f9894743dcd9fdc4041a658ed2"

  url "https://github.com/TeamWheelWizard/WheelWizard/releases/download/v#{version}/WheelWizard-macOS#{arch}.dmg"
  name "Wheel Wizard"
  desc "Mod manager for Mario Kart Wii and Retro Rewind"
  homepage "https://github.com/TeamWheelWizard/WheelWizard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "WheelWizard.app"

  zap trash: [
    "~/.net/WheelWizard",
    "~/Library/Preferences/ga.gabema.WheelWizard.plist",
  ]
end
