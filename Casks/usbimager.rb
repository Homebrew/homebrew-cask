cask "usbimager" do
  version "1.0.4"
  sha256 "42f85d64baee14b63b45ffcb0a7a24ee3f2a5339f76f2b5cdb767a9f069de432"

  url "https://gitlab.com/bztsrc/usbimager/-/raw/binaries/usbimager_#{version}-intel-macosx-cocoa.zip"
  appcast "https://gitlab.com/bztsrc/usbimager/-/tags?format=atom"
  name "USBImager"
  desc "GUI application that writes compressed disk images to USB drives and creates backups"
  homepage "https://gitlab.com/bztsrc/usbimager"

  app "USBImager.app"
end
