cask "vamiga" do
  version "2.0"
  sha256 "ccbb7bc0b807ce471f50327721c47f54a861fac96ce05704194827ee6708a32e"

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
