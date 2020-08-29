cask "webots" do
  version "R2020b"
  sha256 "84ebf8f401045918323e9fc60a25ebffaacfe4869f92b5d5084dac6cf8d48841"

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
