cask "xscreensaver" do
  version "6.04"
  sha256 "8a081a719d668c41a2cc63ed7e363c0dcecb12b1ce3c68fe123cbcde136d28a0"

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
