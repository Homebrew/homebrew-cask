cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.3"
  sha256 arm:   "9d2dfb1e54db720d12ca82a893d7b383883907bb820db5a4400d7e8eff48c80d",
         intel: "b796fdb41f4203cdcd85aace5185eebd7dfaf6fabfe9ecec59a08dd2ce3da99a"

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
