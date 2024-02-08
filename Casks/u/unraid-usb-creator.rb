cask "unraid-usb-creator" do
  version "2.1"
  sha256 "befa042b7fd611f106e182a3128e197173a15072e9f36f979dc89776e698da84"

  url "https://craftassets.unraid.net/uploads/downloads/Unraid.USB.Creator.macOS-#{version}.dmg"
  name "Unraid USB Creator"
  desc "Utility for installing Unraid on a USB drive"
  homepage "https://unraid.net/"

  livecheck do
    url "https://unraid.net/download"
    regex(/href=.*?Unraid[._-]USB[._-]Creator[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Unraid USB Creator.app"
end
