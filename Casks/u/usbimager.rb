cask "usbimager" do
  arch arm: "arm", intel: "intel"

  version "1.0.10"
  sha256 arm:   "a8d2125a8a5edae9309e635741c0fea099c5e58844c86dc786331e48b9431832",
         intel: "675eacd90d0e7d25a4fabe0cfe506173cb52b4731aaff6d41825e64da288cb9e"

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
