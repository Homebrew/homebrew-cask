cask "usbimager" do
  version "1.0.7"
  sha256 "059bf094fdcdf37b71485375255d7e0b68d71ba6316cecb472d6688b076410a6"

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
