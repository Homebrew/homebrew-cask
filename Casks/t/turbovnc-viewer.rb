cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.90"
  sha256 arm:   "951371ea19faad5cd655f99223d6bbc65846fa4de09409ab8c035e31cf42898d",
         intel: "98f9db604aff5caef9be549b3fb1100ed9906bf94ce7e503554bae0a30df8f85"

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
