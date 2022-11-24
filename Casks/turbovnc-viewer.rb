cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "76f451817884185f5832dc794831fbfb62d50104a6b416d4c78c6d55ea4b0f12",
         intel: "0b9f083d753dc65c0a023d8d9c6c95da997184645ea216b60a8e1db72f8baccb"

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
end
