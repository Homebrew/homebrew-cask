cask "vamiga" do
  version "2.6.1"
  sha256 "7d2f450bf8cf895ea04510ffde2c3213e32d4e4fd1957976733415cb625105bf"

  url "https://github.com/dirkwhoffmann/vAmiga/releases/download/v#{version}/vAmiga.app.zip",
      verified: "github.com/dirkwhoffmann/vAmiga/"
  name "vAmiga"
  desc "Amiga 500, 1000, 2000 emulator"
  homepage "https://dirkwhoffmann.github.io/vAmiga"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "vAmiga.app"

  zap trash: [
    "~/Library/Application Support/vAmiga",
    "~/Library/Preferences/dirkwhoffmann.vAmiga.plist",
  ]
end
