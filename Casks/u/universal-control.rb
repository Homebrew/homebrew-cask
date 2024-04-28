cask "universal-control" do
  version "4.2.0.96206"
  sha256 "dd9f9a0ba91bd2f8b09adb694eedc17bb520e165d9102d38537a8bcd8333acdb"

  url "https://pae-web.presonusmusic.com/downloads/products/dmg/PreSonus_Universal_Control_v#{version.dots_to_underscores}.dmg",
      verified: "pae-web.presonusmusic.com/"
  name "Universal Control"
  desc "Control your PreSonus hardware"
  homepage "https://www.presonus.com/products/Universal-Control"

  livecheck do
    url "https://legacy.presonus.com/products/Universal-Control/downloads"
    strategy :page_match
    regex(/Universal\sControl\sV(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :mojave"

  pkg "PreSonus Universal Control.pkg"

  uninstall pkgutil: "presonus.pkg.Universal.Control.daemon"
  uninstall pkgutil: "presonus.pkg.Universal.Control.presets"
  uninstall pkgutil: "presonus.pkg.Universal.Control.controlpanel"
  uninstall pkgutil: "presonus.pkg.Universal.Control.tb_driver"
end
