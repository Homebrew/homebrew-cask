cask "webots" do
  version "R2023a"
  sha256 "54a1d7a94cef0f1b7cadb5c485dac81224628aa725c92dcf630b7e45c3bf6a4f"

  url "https://github.com/cyberbotics/webots/releases/download/#{version}/webots-#{version}.dmg",
      verified: "github.com/cyberbotics/webots/"
  name "Cyberbotics Webots Robot Simulator"
  name "Webots"
  desc "Open source desktop application used to simulate robots"
  homepage "https://www.cyberbotics.com/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/([\w._-]+)["' >]}i)
    strategy :github_latest
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
