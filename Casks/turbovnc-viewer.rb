cask "turbovnc-viewer" do
  version "3.0"
  sha256 "7e4436dbac6daf00e2828ed1ddbe297de6dd07c4e0200b08b550d1fb138748b6"

  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}.dmg",
      verified: "sourceforge.net/turbovnc/"
  name "TurboVNC"
  desc "Remote display system"
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
