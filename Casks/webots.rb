cask "webots" do
  version "R2020b-rev1"
  sha256 "b131e2e98193a7977633d415bba2ca854cb16a7b95b32a853aa8588f69592c03"

  # github.com/cyberbotics/webots was verified as official when first introduced to the cask
  url "https://github.com/cyberbotics/webots/releases/download/#{version}/webots-#{version}.dmg"
  appcast "https://github.com/cyberbotics/webots/releases.atom"
  name "Cyberbotics Webots Robot Simulator"
  name "Webots"
  desc "Open source desktop application used to simulate robots"
  homepage "https://www.cyberbotics.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Webots.app"

  uninstall quit: "com.cyberbotics.webots"

  zap trash: [
    "~/Library/Application Support/Cyberbotics/Webots",
    "~/Library/Caches/Cyberbotics/Webots",
    "~/Library/Preferences/com.cyberbotics.Webots-#{version}.plist",
  ]
end
