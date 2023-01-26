cask "usbimager" do
  version "1.0.9"
  sha256 "6731d6116468aeb607e82d8560ade2d00ae3f9ae94c33b12a44c9aef68b6e610"

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
