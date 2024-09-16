cask "visualboyadvance-m" do
  version "2.1.11"
  sha256 "fbb90afdb6aae1f67ea1aab1e5eca2e0098a76d2f9cb8127b1263555e8d6523b"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-x86_64.zip",
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

  caveats do
    requires_rosetta
  end
end
