cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "5.1"
  sha256 "01f62934c7ef2b9e223121639a0933fbcc56ac5555f22feb21a8ed5b3054a29f"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64.app.zip",
      verified: "github.com/dirkwhoffmann/virtualc64/"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/virtualc64"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :ventura"

  app "VirtualC64.app"

  zap trash: [
    "~/Library/Application Support/VirtualC64",
    "~/Library/Caches/de.dirkwhoffmann.VirtualC64",
    "~/Library/Preferences/de.dirkwhoffmann.VirtualC64.plist",
  ]
end
