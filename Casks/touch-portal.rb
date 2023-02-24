cask "touch-portal" do
  version "3.1.10"
  sha256 :no_check

  url "https://www.touch-portal.com/downloads/TouchPortalMacRelease.dmg"
  name "Touch Portal"
  desc "Macro remote control"
  homepage "https://www.touch-portal.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "TouchPortal.app"

  uninstall pkgutil: "org.eclipse.jdt.internal.jarinjarloader"

  zap trash: "~/Documents/TouchPortal"
end
