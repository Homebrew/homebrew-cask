cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.0.1"
  sha256 "eb3467c08d66a5c80376bbe3dd1f63e99914cf9c9658d29548cfd130cc2058e4"

  url "https://github.com/dirkwhoffmann/virtualc64/releases/download/v#{version}/VirtualC64_#{version}.app.zip",
      verified: "github.com/dirkwhoffmann/virtualc64/"
  name "VirtualC64"
  desc "Cycle-accurate C64 emulator"
  homepage "https://dirkwhoffmann.github.io/virtualc64"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VirtualC64_#{version}.app"
end
