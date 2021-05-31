cask "vamiga" do
  version "1.0.1"
  sha256 "fde211d92aa9eabb8cbdd379b805ac103d03002d473d8563cf194379ca143d59"

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
