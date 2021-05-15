cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.1"
  sha256 "3e21194af9a6b1958e24fe04cd9c1a24b56866a4ee46cc346ddc5e537ce59a07"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64.zip",
      verified: "github.com/dirkwhoffmann/virtualc64/"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/virtualc64"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "VirtualC64.app"
end
