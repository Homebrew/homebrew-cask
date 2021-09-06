cask "webots" do
  version "R2021b"
  sha256 "fc118caa7e39f9c1415d7b9aa2809c351c7981495d2b9e8d21959a09e3c76525"

  url "https://github.com/cyberbotics/webots/releases/download/#{version}/webots-#{version}.dmg",
      verified: "github.com/cyberbotics/webots/"
  name "Cyberbotics Webots Robot Simulator"
  name "Webots"
  desc "Open source desktop application used to simulate robots"
  homepage "https://www.cyberbotics.com/"

  livecheck do
    url :url
    strategy :git
    regex(/^(R\d+[a-z]+)$/i)
  end

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
