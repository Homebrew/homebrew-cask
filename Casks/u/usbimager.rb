cask "usbimager" do
  version "1.0.10"
  sha256 "08c49d21c624d1ac75c12af3fea2d804d14bc57052b196e96adcf0eb2e4824f8"

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
