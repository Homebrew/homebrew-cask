cask "unraid-usb-creator-next" do
  version "1.0.1"
  sha256 "403cbfb11c6072f197fccf74a0c061e0d60561274bc8cd531b8de9db2019959d"

  url "https://github.com/unraid/usb-creator-next/releases/download/v#{version}/unraid-usb-creator-#{version}.dmg",
      verified: "github.com/unraid/usb-creator-next/"
  name "Unraid USB Creator"
  desc "Home of the Next-Gen Unraid USB Creator, a fork of the Raspberry Pi Imager"
  homepage "https://unraid.net/download/"

  app "Unraid USB Creator.app"

  zap trash: "~/Library/Preferences/net.unraid.Unraid USB Creator.plist"
end
