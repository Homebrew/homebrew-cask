cask "visualboyadvance-m" do
  arch arm: "ARM64", intel: "x86_64"

  version "2.2.2"
  sha256 arm:   "1c3d1bf702d48c4a6e0c363ed07381d293c0a704eb2958e2b4d598235af7d5aa",
         intel: "57ba43178a624d20c4df4879802675a75ae7579c2e10de7c1211e2c338ab71d7"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-#{arch}.zip",
      verified: "github.com/visualboyadvance-m/visualboyadvance-m/"
  name "Visual Boy Advance - M"
  desc "Game Boy Advance emulator"
  homepage "https://visualboyadvance-m.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "visualboyadvance-m.app"

  zap trash: [
    "~/Library/Application Support/visualboyadvance-m",
    "~/Library/Preferences/visualboyadvance-m.plist",
  ]
end
