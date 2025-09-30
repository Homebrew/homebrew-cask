cask "unraid-usb-creator-next" do
  version "1.1.0"
  sha256 "7f72aa8d86f43fde768bc97c583d269798235f1b3212ed4c59c403923a9ad462"

  url "https://github.com/unraid/usb-creator-next/releases/download/v#{version}/unraid-usb-creator-#{version}.dmg",
      verified: "github.com/unraid/usb-creator-next/"
  name "Unraid USB Creator"
  desc "Home of the Next-Gen Unraid USB Creator, a fork of the Raspberry Pi Imager"
  homepage "https://unraid.net/download/"

  depends_on macos: ">= :big_sur"

  app "Unraid USB Creator.app"

  zap trash: "~/Library/Preferences/net.unraid.Unraid USB Creator.plist"
end
