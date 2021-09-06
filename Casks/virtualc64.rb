cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.4"
  sha256 "869635a5256e7420d704967854c3ad8b51d740f24bba334c5a41f6932191d386"

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
