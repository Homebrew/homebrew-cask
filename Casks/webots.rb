cask "webots" do
  version "R2022a"
  sha256 "b93c1d13b1e9679e642f7035bf9bec1ca05d4191b9152fdb59beeb405edaf993"

  url "https://github.com/cyberbotics/webots/releases/download/#{version}/webots-#{version}.dmg",
      verified: "github.com/cyberbotics/webots/"
  name "Cyberbotics Webots Robot Simulator"
  name "Webots"
  desc "Open source desktop application used to simulate robots"
  homepage "https://www.cyberbotics.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/tag/([\w._-]+)["' >]}i)
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
