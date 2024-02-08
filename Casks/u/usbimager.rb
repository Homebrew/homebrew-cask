cask "usbimager" do
  arch arm: "arm", intel: "intel"

  version "1.0.10"
  sha256 arm:   "54fb7b909009acca97f8ae42939d53e5a70c1030c001a024a0531173001e908d",
         intel: "85081cde8626b3714b77244de85d38830e89f0d1af7341514ad93077c7ba826a"

  url "https://gitlab.com/bztsrc/usbimager/raw/binaries/usbimager_#{version}-#{arch}-macosx-cocoa.zip",
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
