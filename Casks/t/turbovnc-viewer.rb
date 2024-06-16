cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.1"
  sha256 arm:   "401db71b4f4e2865e9b11fdbae4fbc40cc9161b6082eb3165a80ad30b3644b90",
         intel: "534004265ce53cfec20082416f8e949db377079a6fe12aacfef1e6a85c384a9d"

  url "https://github.com/TurboVNC/turbovnc/releases/download/#{version}/TurboVNC-#{version}-#{arch}.dmg",
      verified: "github.com/TurboVNC/turbovnc/"
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
