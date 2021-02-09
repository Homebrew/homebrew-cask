cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "4.0"
  sha256 "97bf78bd58b5855206a502ab9ae26be3e4c554c5865e5cde9d54ca52016979d8"

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  name "Virtual C64"
  homepage "http://www.dirkwhoffmann.de/virtualc64/"

  livecheck do
    url "http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml"
    strategy :sparkle
  end

  app "VirtualC64.app"
end
