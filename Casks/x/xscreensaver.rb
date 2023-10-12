cask "xscreensaver" do
  version "6.08.1"
  sha256 "3450ee464c70269a9f6be2d38aa66859dad519fdac4c552a2a7b3a106788cfd3"

  url "https://www.jwz.org/xscreensaver/xscreensaver-#{version}.dmg"
  name "XScreenSaver"
  desc "Screen savers"
  homepage "https://www.jwz.org/xscreensaver/"

  livecheck do
    url "https://www.jwz.org/xscreensaver/download.html"
    regex(/href=.*?xscreensaver[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "Install Everything.pkg"

  uninstall pkgutil: "org.jwz.xscreensaver",
            delete:  [
              "/Applications/Apple2.app",
              "/Applications/Phosphor.app",
            ]
end
