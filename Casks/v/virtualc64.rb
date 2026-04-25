cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "6.0"
  sha256 "edb1b65e906667018985a1adf794cfcc46299c636afb350e54dd25836fb91086"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64.app.zip",
      verified: "github.com/dirkwhoffmann/virtualc64/"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/VirtualC64/index.html"

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
