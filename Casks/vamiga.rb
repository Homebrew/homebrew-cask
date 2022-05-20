cask "vamiga" do
  version "2.0.1"
  sha256 "7b985aef6622689abf300c5e61fd8d90fff2cad69045074317d24e748d5a5a55"

  url "https://github.com/dirkwhoffmann/vAmiga/releases/download/v#{version}/vAmiga.app.zip",
      verified: "github.com/dirkwhoffmann/vAmiga/"
  name "vAmiga"
  desc "Amiga 500, 1000, 2000 emulator"
  homepage "https://dirkwhoffmann.github.io/vAmiga"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "vAmiga.app"

  zap trash: [
    "~/Library/Application Support/vAmiga",
    "~/Library/Preferences/dirkwhoffmann.vAmiga.plist",
  ]
end
