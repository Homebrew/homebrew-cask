cask "visualboyadvance-m" do
  arch arm: "ARM64", intel: "x86_64"

  version "2.2.1"
  sha256 arm:   "c4486e7cf7daf5fa40babf44f369c350cc6cc9945703615b5a2d68aff5db46cc",
         intel: "5078da6545c660ed8c7b2d22598120677e0b227ec1eb4407f07fa10525c3fd1c"

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
