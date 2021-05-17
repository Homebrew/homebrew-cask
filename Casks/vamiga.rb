cask "vamiga" do
  version "1.0"
  sha256 "c39f16935c7e1a4094a0fc23cdc2c4362d356056b7e9b03c95db47d9c65a852b"

  url "https://github.com/dirkwhoffmann/vAmiga/releases/download/v#{version}/vAmiga.zip",
      verified: "github.com/dirkwhoffmann/vAmiga/"
  name "vAmiga"
  desc "Amiga 500, 1000, 2000 emulator"
  homepage "https://dirkwhoffmann.github.io/vAmiga"

  app "vAmiga.app"
end
