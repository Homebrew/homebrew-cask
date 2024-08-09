cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.2"
  sha256 arm:   "4536941c3a1f8a763b8ea1f84606a6ad3385f8939a0dfa7350574d91b88274ef",
         intel: "3a8af5fd635f7e8246619c02abd85760d62bddc91c378207a62aa986ed34bf78"

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
