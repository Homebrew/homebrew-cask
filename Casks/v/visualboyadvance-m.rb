cask "visualboyadvance-m" do
  arch arm: "ARM64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "3b8e586d433fa7c7ae6e5b3b979a9ad09a1e948ae102fac897ac92cf8f92390d",
         intel: "cdfde0dfc234976c1bf432701217eb519604fff60817f9e81f1b7b0f698a72c0"

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
