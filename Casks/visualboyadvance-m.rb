cask "visualboyadvance-m" do
  version "2.1.6"
  sha256 "d9d13debc6f19eeba7cb729de75389e4e2f45bdf56bd68035c05fe3eb75abf2e"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-x86_64.zip",
      verified: "github.com/visualboyadvance-m/visualboyadvance-m/"
  name "Visual Boy Advance - M"
  desc "Game Boy Advance emulator"
  homepage "https://vba-m.com/"

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
