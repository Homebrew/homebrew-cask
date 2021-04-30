cask "turbovnc-viewer" do
  version "2.2.6"
  sha256 "1421928d7ca4a81f296dcc7dde9225c03d2f7ad94b060862e1a3f99d7adeff54"

  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}.dmg",
      verified: "sourceforge.net/turbovnc/"
  appcast "https://sourceforge.net/projects/turbovnc/rss"
  name "TurboVNC"
  homepage "https://www.turbovnc.org/"

  pkg "TurboVNC.pkg"

  uninstall pkgutil: "com.virtualgl.turbovnc",
            script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            }

  caveats do
    depends_on_java "8"
  end
end
