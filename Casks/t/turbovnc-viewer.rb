cask "turbovnc-viewer" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.3"
  sha256 arm:   "31ba59b2780075dc5fadfc7d1094726f37f49f6461f09279dd23c7f93f299e87",
         intel: "0e0274ec406ef875f38fc29961f93506a4fa7f44abe3645024ce5aa99e10696f"

  url "https://github.com/TurboVNC/turbovnc/releases/download/#{version}/TurboVNC-#{version}-#{arch}.dmg",
      verified: "github.com/TurboVNC/turbovnc/"
  name "TurboVNC"
  desc "Remote display system"
  homepage "https://www.turbovnc.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "TurboVNC.pkg"

  uninstall script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.turbovnc"

  # No zap stanza required
end
