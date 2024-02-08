cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1"
  sha256 arm:   "b0d9071d517d5e510605228d47d862ba94874e25e3d508116f2195913999890c",
         intel: "7d302dd611ff7b1ab92d2215ca550361dbf081b6bbf3916f3640730483a314d4"

  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}-#{arch}.dmg",
      verified: "sourceforge.net/turbovnc/"
  name "TurboVNC"
  desc "Remote display system"
  homepage "https://www.turbovnc.org/"

  pkg "TurboVNC.pkg"

  uninstall script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.turbovnc"

  # No zap stanza required
end
