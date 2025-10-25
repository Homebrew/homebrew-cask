cask "visualboyadvance-m" do
  arch arm: "ARM64", intel: "x86_64"

  version "2.2.3"
  sha256 arm:   "8356a49d20e5d56e8e014ec537e2335e8c1904b8b22eb982d7190cf8d2d7973a",
         intel: "e8e39a82c1d6555bd21dd48955d09ccbf4ffd42c793bf67a702cafffbf18fd1f"

  url "https://github.com/visualboyadvance-m/visualboyadvance-m/releases/download/v#{version}/visualboyadvance-m-Mac-#{arch}.zip",
      verified: "github.com/visualboyadvance-m/visualboyadvance-m/"
  name "Visual Boy Advance - M"
  desc "Game Boy Advance emulator"
  homepage "https://visualboyadvance-m.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "visualboyadvance-m.app"

  zap trash: [
    "~/Library/Application Support/visualboyadvance-m",
    "~/Library/Preferences/visualboyadvance-m.plist",
  ]
end
