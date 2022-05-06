cask "touch-portal" do
  version "3.0.10"
  sha256 :no_check

  url "https://www.touch-portal.com/downloads/TouchPortalMacRelease.dmg"
  name "Touch Portal"
  desc "Macro remote control"
  homepage "https://www.touch-portal.com/"

  livecheck do
    url :homepage
    regex(/\.pkg.*\n.*<br>v?(\d+(?:\.\d+)*)/i)
  end

  pkg "Touch_Portal_Installer.pkg"

  uninstall pkgutil: "org.eclipse.jdt.internal.jarinjarloader"

  zap trash: "~/Documents/TouchPortal"
end
