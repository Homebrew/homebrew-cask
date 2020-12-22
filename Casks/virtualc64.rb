cask "virtualc64" do
  # NOTE: "64" is not a version number, but an intrinsic part of the product name
  version "3.4"
  sha256 "542145ec4d6b71b5a05a5bfe55b30fc7792dd8eaf363e666a426eb6e045e8af4"

  url "http://www.dirkwhoffmann.de/virtualc64/VirtualC64_#{version}.zip"
  name "Virtual C64"
  homepage "http://www.dirkwhoffmann.de/virtualc64/"

  livecheck do
    url "http://dirkwhoffmann.de/virtualc64/VirtualC64Appcast.xml"
    strategy :sparkle
  end

  app "VirtualC64.app"
end
