cask "usbimager" do
  version "1.0.8"
  sha256 "4e1d67cb1a8971b88396e9bf4ca4814415e5c9bb21d791ef1deef75c4240ecf1"

  url "https://gitlab.com/bztsrc/usbimager/raw/binaries/usbimager_#{version}-intel-macosx-cocoa.zip",
      verified: "gitlab.com/bztsrc/usbimager/"
  name "USBImager"
  desc "Very minimal GUI app that can write/read to disk images and USB drives"
  homepage "https://bztsrc.gitlab.io/usbimager/"

  livecheck do
    url :homepage
    regex(%r{/usbimager[._-]v?(\d+(?:\.\d+)+)[._-][^"' >]*?macosx?[^"' >]*?\.zip}i)
  end

  app "USBImager.app"

  zap trash: "~/Library/Preferences/usbimager.plist"
end
