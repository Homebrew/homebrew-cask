cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "6.2"
  sha256 "b6f28691f43d0393a23de4b8104e6b95f15dfe911a800adc4e85b99b4ff11266"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64.app.zip"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/VirtualC64/index.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "VirtualC64.app"

  zap trash: [
    "~/Library/Application Support/VirtualC64",
    "~/Library/Caches/de.dirkwhoffmann.VirtualC64",
    "~/Library/Preferences/de.dirkwhoffmann.VirtualC64.plist",
  ]
end
