cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.6"
  sha256 "16076b0c0abf732d40e8cbb0ccac9f3830778271502733ee4928caf7c5cb3f2b"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64.app.zip",
      verified: "github.com/dirkwhoffmann/virtualc64/"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/virtualc64"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "VirtualC64.app"

  zap trash: [
    "~/Library/Application Support/VirtualC64",
    "~/Library/Caches/de.dirkwhoffmann.VirtualC64",
    "~/Library/Preferences/de.dirkwhoffmann.VirtualC64.plist",
  ]
end
