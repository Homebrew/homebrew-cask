cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.2"
  sha256 arm:   "fbd3acc5a9f586dd372d8ce327340db7628f0f6c1e5358c140b1876b2539a7d8",
         intel: "1603d7eb714a24269c91aec96b0c351969ebcabb8f397f0ca34b9a9974bf3692"

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
