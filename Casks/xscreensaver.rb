cask "xscreensaver" do
  version "6.06"
  sha256 "87d918b082b03614aa2d351968351ee9fbd4e9748c9a1569df4de8e7e93f1b67"

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
