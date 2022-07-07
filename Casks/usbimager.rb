cask "usbimager" do
  version "1.0.8"
  sha256 "7bd1e9782f8dd5b8b96281001fe9cd75a4fc75cd86ebe571dab6c715147d843e"

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
