cask "usbimager" do
  version "1.0.8"
  sha256 "fe59fe45253220b08554f708b4e0fc8e7d764dd4d296671b054ae0e4391213fe"

  url "https://gitlab.com/bztsrc/usbimager/raw/binaries/usbimager_#{version}-intel-macosx-cocoa.zip",
      verified: "gitlab.com/bztsrc/usbimager/"
  name "USBImager"
  desc "Very minimal GUI app that can write/read to disk images and USB drives"
  homepage "https://bztsrc.gitlab.io/usbimager/"

  livecheck do
    url "https://gitlab.com/bztsrc/usbimager.git"
  end

  app "USBImager.app"

  zap trash: "~/Library/Preferences/usbimager.plist"
end
