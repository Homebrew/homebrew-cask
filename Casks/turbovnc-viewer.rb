cask "turbovnc-viewer" do
  version "2.2.90"
  sha256 "6a6a5cca04076280173ad394640aa4e409ecd7b87ee6de72754a3cfde3ac3b54"

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
