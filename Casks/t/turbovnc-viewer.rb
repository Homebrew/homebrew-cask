cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.91"
  sha256 arm:   "77ea491139eff7cf897e59e6fab52442cd3b560f804f9c2b1bd6c5a4cb5abf69",
         intel: "b045ceeef338415de7dba04ce5b90e0aca656152c1f6d760fbc45028138885c5"

  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}-#{arch}.dmg",
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

  # No zap stanza required
end
