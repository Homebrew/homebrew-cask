cask "visualboyadvance-m" do
  version "2.1.6"
  sha256 "ab45eb8a3ed9b263c44e1f05dcef794c676b5fce0adbf693587a1f7fc2004c70"

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
