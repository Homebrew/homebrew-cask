cask "webots" do
  version "R2021a"
  sha256 "94ba34a3e1393e117a50c3864253f3e108f144cde30b334eee02e331036a3d36"

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
