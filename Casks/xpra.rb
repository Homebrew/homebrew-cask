cask "xpra" do
  version "4.1.3"
  sha256 :no_check

  url "https://www.xpra.org/dists/osx/x86_64/Xpra-x86_64.pkg"
  name "Xpra"
  desc "Screen and application forwarding system"
  homepage "https://www.xpra.org/"

  livecheck do
    url "https://github.com/Xpra-org/xpra/releases"
    strategy :git
  end

  pkg "Xpra-x86_64.pkg"

  uninstall pkgutil:  "org.xpra.pkg"

  zap trash: "/Library/Application Support/Xpra"
end
